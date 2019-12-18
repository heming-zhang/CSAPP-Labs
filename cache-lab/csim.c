#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>

typedef unsigned long ulong;
typedef unsigned long long ull;

/* global variable time */
/* Used for recording the time for eviction */
ulong sum_T = 0;

/* global variable to record hits, misses and evictions */
int hits = 0;
int misses = 0;
int evictions = 0;

/*Block offest bits and Memory contents will not be stored 
simply count hits, misses, and evictions */
typedef struct cache_content{
    /* data */
    int v; /*valid bits*/
    ull tag; /*tag for original data's address upper part*/
    ulong time; /*time being used, since we will replace long time
    no being used data*/
}cache_content;

typedef struct regulations{
    /* cache property by command line input */
    int s;
    int E;
    int b;
    char* tracefile_path;
}regulations;


cache_content **cache_initialization(int s, int E){
    /* initialize the cache */
    int i = 0;
    int S = 1 << s; /* S stands for number of sets in cache simulator */

    cache_content **cache_table; /* Use 2D array to simulate the cache */
    cache_table = malloc(S * sizeof(cache_content *));
    for(i = 0; i < S; i ++){
        /* For each set, there are E number of lines */
        cache_table[i] = calloc(E, sizeof(cache_content));
    }
    return cache_table;
}


int check_hits(cache_content** cache_table, ull setNum, int E, cache_content temp){
    /* check hits */
    int i = 0;
    int hitflag = 0;
    for(i = 0; i < E; i ++){
        /* Hits mean that tags are same and it is valid.  */
        if(cache_table[setNum][i].tag == temp.tag && cache_table[setNum][i].v != 0){
            hits ++;
            sum_T ++;
            temp.time = sum_T;
            cache_table[setNum][i] = temp;
            hitflag = 1;
        }
    }
    return hitflag;
}


void loadin_cache(cache_content** cache_table, ull setNum, int E, cache_content temp){
    int spaceflag = 0;
    int i;
    for(i = 0; i < E; i++){
        /* If there are spare space for "setNum" set, just add it and get cold misses */
        if(cache_table[setNum][i].v == 0){
            spaceflag = 1;
            sum_T ++;
            temp.v = 1;
            temp.time = sum_T;
            cache_table[setNum][i] = temp;
            misses ++;
            break;
        }
    }
    /* If there are no space for "setNum" set, we need evict oldest line and add it in there */
    int line_index = 0;
    ulong min_time = cache_table[setNum][0].time;
    if(!spaceflag){
        for(i = 0; i < E; i ++){
            if(cache_table[setNum][i].time < min_time){
                min_time = cache_table[setNum][i].time;
                line_index = i;
            }
        }
        sum_T ++;
        temp.v = 1;
        temp.time = sum_T;
        cache_table[setNum][line_index] = temp;
        misses ++;
        evictions ++;
    }
}


void cache_sim(cache_content** cache_table, ull address, int s, int b, int E){
    /* simulate the cache process */
    int tag_len = 64 - s - b; /* tag's length, computed with given parameters */
    ull setNum; /* set indices computed with given */
    cache_content temp;
    temp.tag = address >> (s + b); /* change cache_content tag */
    setNum = address << tag_len >> (tag_len + b);

    int hitflag = check_hits(cache_table, setNum, E, temp);
    /* check spare space and load into cache misses! or maybe evictions */
    if(!hitflag){
        loadin_cache(cache_table, setNum, E, temp);
    }
}


regulations parse_param(int argc, char** argv){
    int parameters, s, E, b;
    char* tracefile_path;
    regulations rule;
    /* Parse the parameters in command lines */
	while( -1 != (parameters = getopt(argc, argv, "s:E:b:t:hv")))
	{
		switch(parameters)
		{
            case 'h':
                break;
            case 'v':
                break;
			case 's': 
            /* 2^s (1<<s)is the number of sets you will have */
				s = atoi(optarg); break;
			case 'E':
            /* e is just the number of lines per set */
				E = atoi(optarg); break;
			case 'b':
            /* 2^b (1<<b) is the size of blocks */
				b = atoi(optarg); break;
            case 't':
                tracefile_path = optarg; break;
			default: 
				printf("Parameters False.\n"); break;
		}
	}
    /* Use struct rule to store properties from command line */
    rule.s = s;
    rule.E = E;
    rule.b = b;
    rule.tracefile_path = tracefile_path;
    return rule;
}


int main(int argc, char** argv)
{   
    /* parse command lines */
    regulations rule = parse_param(argc, argv);
    int s = rule.s;
    int E = rule.E;
    int b = rule.b;
    char* tracefile_path = rule.tracefile_path;

    /* initialize the cache */
    cache_content** cache_table;
    cache_table = cache_initialization(s, E);

    /* load and access data */
    printf("%s\n", tracefile_path);
    FILE* file_content; char operation;
    ull address;  int size;

    file_content  = fopen(tracefile_path, "r");
    if(file_content==NULL){
        printf("Wrong Open.\n");
    }
    while(fscanf(file_content, " %c %llx,%d", &operation, &address, &size) == 3){
        // printf(" %c %llx,%d\n", operation, address, size);
        switch (operation)
        {
        case 'I':
            break;
        case 'L':
            cache_sim(cache_table, address, s, b, E);
            break;
        case 'S':
            cache_sim(cache_table, address, s, b, E);
            break;
        case 'M':
            /* Access Data Twice, since L = M + S  */
            cache_sim(cache_table, address, s, b, E);
            cache_sim(cache_table, address, s, b, E);
            break;
        default:
            break;
        }
    }
    fclose(file_content);

    printSummary(hits, misses, evictions);
    return 0;
}