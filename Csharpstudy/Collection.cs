public class Collection{
    public void DefineArray(){
        //one dimensional array
        int[] array1 = new int[5];
        int[] array2  = new int[5] {45,56,232,154,48}; 
        int[] array3 = {45,56,232,154,48};
         
        //multidimensional Array
         int[,] mat = new int[2,3];
         int[,] mat2 = {{12,13,15},{14,78,10}};

         var mat1 = new int[1,3,2];

         int[][] jaggedArray1 = new int[4][];
         jaggedArray1[0] = new int [2] {12,2};
        //  jaggedArray1[1] = new int [2] {12,2,123,21};
        //  jaggedArray1[2] = new int [2] {12,2,213};

    }
}