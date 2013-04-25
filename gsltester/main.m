//
//  main.m
//  gsltester
//
//  Created by Peter Molfese on 9/25/12.
//  Copyright (c) 2012 Peter Molfese. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#include <gsl/gsl_rng.h>

gsl_rng * r;  /* global generator */

int main (int argc, const char * argv[])
{
    gsl_rng_env_setup();
    
    r = gsl_rng_alloc( gsl_rng_default );
    
    printf ("generator type: %s\n", gsl_rng_name (r));
    printf ("seed = %lu\n", gsl_rng_default_seed);
    printf ("first value = %lu\n", gsl_rng_get (r));
    printf ("second value = %lu\n", gsl_rng_get (r));
    
    gsl_rng_free (r);
    return 0;
}