####AmadIrfan

####2021-CS-25

# Task 01:

#####1.Write a program that contains 3 threads. Each thread increment the global variable and then adds that value to the result which is another global variable. Initialize result and other variable with 0. Output the final value of result and the other global variable.

###Code:

```c
#include <stdio.h>
#include <pthread.h>

// Global variables
int var = 0;
int result = 0;
// Function that increments var and adds it to result
void* add_var(void* arg) {
    int* id = (int*)arg;
    var++;
    result += var;
    printf("Thread %d: var = %d, result = %d\n", *id, var, result);
    return NULL;
}
int main() {
    // Create 3 threads
    pthread_t threads[3];
    int ids[3] = {1, 2, 3};
    // Start the threads
    for (int i = 0; i < 3; i++) {
        pthread_create(&threads[i], NULL, add_var, &ids[i]);
    }
    // Wait for all threads to finish
    for (int i = 0; i < 3; i++) {
        pthread_join(threads[i], NULL);
    }   
    // Output the final values
    printf("Final: var = %d, result = %d\n", var, result);    
return 0;
}
```

### Output:

![](/task 1.png)

## #Task 02:

#####2.Write a program that creates threads based on the input given by user. Each thread should execute function print () and display its thread ID. The output should be like:

Hello I am thread 1 my ID is 123

Hello I am thread 2 my ID is 234....

The main thread should wait for the child threads to terminate and then call exit.

Use pthread_self()

pthread_t ID= pthread_self (void);

Returns the unique thread ID of the calling thread

### Code:

```c
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

void* print(void* arg) {
    pthread_t id = pthread_self();
    printf("Hello, I am a thread of %ld, my ID is %ld\n", ((long)arg), id);
    return NULL;
}

int main() {
    int num_threads;
    printf("Enter The Number of Threads :-  ");
    scanf("%d", &num_threads);
    
    pthread_t threads[num_threads];
    
    for (int i = 0; i < num_threads; i++) {
        long* id = malloc(sizeof(long));
        *id = i+1;
        pthread_create(&threads[i], NULL, print, id);
    }
    
    for (int i = 0; i < num_threads; i++) {
        pthread_join(threads[i], NULL);
    }
    
    exit(0);
}

```

### Output:

![](/task 3.png)

###Task 03:

#####3.Write a program that create 4 threads with proper create, join, exit system calls and all threads are doing different jobs.

### Code:

```c
#include <stdio.h>
#include <pthread.h>

void *thread_func(void *arg) {
    printf("Thread %ld running\n", (long)arg);
    pthread_exit(NULL);
}

int main() {
    pthread_t threads[4];
    int rc;

    for (long i = 0; i < 4; i++) {
        rc = pthread_create(&threads[i], NULL, thread_func, (void *)i);
        if (rc) {
            printf("Error thread %ld\n", i);
            return -1;
        }
    }

    for (int i = 0; i < 4; i++) {
        rc = pthread_join(threads[i], NULL);
        if (rc) {
            printf("Error tread joining %d\n", i+1);
            return -1;
        }
    }

    printf("All threads have completed\n");
return 0;
}
```

### Output:

![](/task 3.png)

###Task 04:

#####4.Write a program that create an array of 4 threads using for loop and return thread id and process id from each thread and comments on the IDs of threads and process.

### Code:

```c
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void *thread_func(void *arg) {
    pid_t pid = getpid();
    pthread_t tid = pthread_self();
    printf("Thread id: %lu, Process ID: %d \n", tid, pid);
    pthread_exit(NULL);
}
int main() {
    pthread_t threads[4];
    int rc;

    for (int i = 0; i < 4; i++) {
        rc = pthread_create(&threads[i], NULL, thread_func, NULL);
        if (rc) {
            printf("Error creating thread %d\n", i);
return -1;
        }
    }
    for (int i = 0; i < 4; i++) {
        rc = pthread_join(threads[i], NULL);
        if (rc) {
            printf("Error joining thread %d\n", i);
            return -1;
        }
    }
    printf("All threads have completed\n");
    return 0;
}
```

### Output:

![](/task 4.png)
