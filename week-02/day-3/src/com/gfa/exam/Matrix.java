package com.gfa.exam;

import java.util.Arrays;

public class Matrix {
  public static void main(String[] args) {
    int[][] matrix = new int[4][4];
    for (int i = 0; i < matrix.length; i++) {
      for (int j = 0; j < matrix.length; j++) {
        if (j == i) {
          matrix[i][j] = 1;
        } else {
          matrix[i][j] = 0;
        }
      }
      System.out.println(Arrays.toString(matrix[i]));
    }
  }
}
