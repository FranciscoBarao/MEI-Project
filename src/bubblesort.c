 
//Adapted Rosetta Code


#include <stdlib.h>     
#include <stdio.h>
#include <time.h>
#include <string.h>

#define MAX 1000000
int A[MAX], B[MAX];
int steps = 0;
FILE *fp;

double eps;

double r(){
    return (double)rand() / (double)RAND_MAX ;
}

// computes the length of the longest non-decreasing string
//
int LNDS(int n) {

  int max = 1; 
  int len = 1;
  for (int i = 1; i < n; i++) {
    if(A[i-1] <= A[i]) {
        len++;
        if (len > max) 
            max=len;
    } 
    else
        len=1;
  }
  return max;
}

void bubble_sort_errorless(int *a, int n){
    int i, t, j = n, s = 1;
    while (s) {
        s = 0;
        for (i = 1; i < j; i++) {
            if (a[i] < a[i - 1]) {
                t = a[i];
                a[i] = a[i - 1];
                a[i - 1] = t;
                s = 1;
                steps++;
                }
            }
        }
    j--;
}



void bubble_sort (int *a, int n) {
    int i, t, j = n, s = 1;
    while (s) {
        s = 0;
        for (i = 1; i < j; i++) {
            if (r() > eps) {            // no failure  
                if (a[i] < a[i - 1]) {
                    t = a[i];
                    a[i] = a[i - 1];
                    a[i - 1] = t;
                    s = 1;
                }
            }
            else{			            // failure
                if (a[i] >= a[i - 1]) {
                    t = a[i];
                    a[i] = a[i - 1];
                    a[i - 1] = t;
                    s = 1;
                }
            }
        }
        j--;
    }
}


int main() {
        int n, i;
        scanf("%lf",&eps);
        scanf("%d",&n);

        for (i=0; i < n; i++) 
                scanf("%d",&A[i]);
        srand((unsigned) time(NULL));
        memcpy(B, A, sizeof(A));
        
        /* Print array unorganized
        printf("%d",A[0]);
        for (i=1; i<n;i++)
                printf(" %d", A[i]);
        printf("\n");
        */
        bubble_sort(A,n);

        /* Print array with erros
        printf("%d",A[0]);
        for (i=1; i<n;i++)
                printf(" %d", A[i]);
        printf("\n");
        */

        int count = LNDS(n);
        eps = -1.0;

        //Re-organize array with error
        bubble_sort_errorless(A,n);


        

        FILE *fp = fopen("out/steps - bubblesort.txt", "a+");
        fprintf(fp, "%d\n", steps);
        fclose(fp);
        fp = fopen("out/longest_arr - bubblesort.txt", "a+");
        fprintf(fp, "%d\n", count);
        fclose(fp);
        
        /* Print array with organized
        printf("%d",B[0]);
        for (i=1; i<n;i++)
                printf(" %d", B[i]);
        printf("\n%d\n",count);
        */
        
        

	return 0;
}

