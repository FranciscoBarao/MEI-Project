// Adapted from Rosetta Code


#include <stdlib.h>     
#include <stdio.h>
#include <time.h>
#include <string.h>

#define MAX 10000

int A[MAX], B[MAX];
double eps;
int steps = 0;

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


double r(){
    return (double)rand() / (double)RAND_MAX ;
}


void merge_errorless (int *a, int n, int m) {
    int i, j, k;
    int *x = malloc(n * sizeof (int));
    for (i = 0, j = m, k = 0; k < n; k++) {
        if(j == n){
            x[k] = a[i++];
        }else{
            if( i == m){
                x[k] = a[j++];
            }else{
                if( a[j] < a[i]){
                    x[k] = a[j++];
                    steps++;
                }else{
                    x[k] = a[i++];
                    steps++;
                }
            }
        }               
    }
    for (i = 0; i < n; i++) {
        a[i] = x[i];
    }
    free(x);
}
 

void merge (int *a, int n, int m) {
    int i, j, k;
    int *x = malloc(n * sizeof (int));
    for (i = 0, j = m, k = 0; k < n; k++) {
        if (r() > eps) {			//no failure
		x[k] = j == n ? a[i++]
             	: i == m      ? a[j++]
             	: a[j] < a[i] ? a[j++]
             	:               a[i++];
    	}
	else {			// failure
		x[k] = j == n ? a[i++]
             	: i == m      ? a[j++]
             	: a[j] >= a[i] ? a[j++]
             	:               a[i++];
    	}
    }
    for (i = 0; i < n; i++) {
        a[i] = x[i];
    }
    free(x);
}
 
void merge_sort_errorless (int *a, int n) {
    if (n < 2)
        return;
    int m = n / 2;
    merge_sort_errorless(a, m);
    merge_sort_errorless(a + m, n - m);
    merge_errorless(a, n, m);
}

void merge_sort (int *a, int n) {
    if (n < 2)
        return;
    int m = n / 2;
    merge_sort(a, m);
    merge_sort(a + m, n - m);
    merge(a, n, m);
}



int main() {

    int n, i;

    scanf("%lf",&eps);
    scanf("%d",&n);

    for (i=0; i < n; i++) 
            scanf("%d",&A[i]);
    srand((unsigned) time(NULL));
    memcpy(B, A, sizeof(A));
    
    /*printf("%d",A[0]);
    for (i=1; i<n;i++)
            printf(" %d", A[i]);
    printf("\n");
    */
    
    merge_sort(A,n);

    /*printf("%d",A[0]);
    for (i=1; i<n;i++)
            printf(" %d", A[i]);
    printf("\n");*/

    eps = -1.0;
    int count = LNDS(n);

    merge_sort_errorless(A,n);


    
    FILE *fp = fopen("out/steps - mergesort.txt", "a+");
    fprintf(fp, "%d\n", steps);
    fclose(fp);
    fp = fopen("out/longest_arr - mergesort.txt", "a+");
    fprintf(fp, "%d\n", count);
    fclose(fp);

    /*printf("%d",B[0]);
    for (i=1; i<n;i++)
            printf(" %d", B[i]);
    printf("\n%d\n",count);
    */

}





