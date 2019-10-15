#include <stdlib.h>     
#include <stdio.h>
#include <time.h>
#include <string.h>

#define MAX 1000000

int A[MAX], B[MAX];
double eps;
int steps = 0;

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

int partition_errorless (int arr[], int low, int high) { 
	int pivot = arr[high]; // pivot 
	int i = (low - 1); // Index of smaller element 

	for (int j = low; j <= high- 1; j++) 
	{ 
		if (arr[j] < pivot) 
		{ 
			i++; // increment index of smaller element 
			swap(&arr[i], &arr[j]); 
            steps++;
		} 
	} 
	swap(&arr[i + 1], &arr[high]); 
    steps++;
	return (i + 1); 
} 

void quickSort_errorless(int arr[], int low, int high) { 
	if (low < high) 
	{ 
		
		int pi = partition_errorless(arr, low, high); 


		quickSort_errorless(arr, low, pi - 1); 
		quickSort_errorless(arr, pi + 1, high); 
	} 
} 



void swap(int *a, int *b) {
  int c = *a;
  *a = *b;
  *b = c;
}
 
int partition(int A[], int p, int q) {
  swap(&A[ p + ( rand() % (q - p + 1) ) ], &A[q]);   // PIVOT = A[q]
 
  int i = p - 1;
  for(int j = p; j <= q; j++) {
	if (r() > eps) { 	// no failure	
		if(A[j] <= A[q])
      			swap(&A[++i], &A[j]);
	}
	else {			// failure
		if (A[j] > A[q]) 
			swap(&A[++i], &A[j]);
	}
  }
 
  return i;
}
 
void quicksort(int A[], int p, int q) {

	if(p < q) {
    		int pivotIndx = partition(A, p, q);
    		quicksort(A, p, pivotIndx - 1);
    		quicksort(A, pivotIndx + 1, q);
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
	
	/*printf("%d",A[0]);
	for (i=1; i<n;i++)
		printf(" %d", A[i]);
	printf("\n");
    */

	quicksort(A,0,n-1);

	/*printf("%d",A[0]);
	for (i=1; i<n;i++)
		printf(" %d", A[i]);
	printf("\n");
    */

	int count = LNDS(n);
	eps = -1.0;
	

	quickSort_errorless(A,0,n-1);

    fp = fopen("/out/steps.txt", "a+");
    fprintf(fp, "%d\n",&steps);
    fclose(fp);
    fp = fopen("/out/longest_arr.txt", "a+");
    fprintf(fp, "%d\n",&count);
    fclose(fp);
    /*
	printf("%d",B[0]);
        for (i=1; i<n;i++)
                printf(" %d", B[i]);
        printf("\n%d\n",count);
    */



}


