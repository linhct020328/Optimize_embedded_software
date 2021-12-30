#!/bin/bash

CXX="gcc"
FLAGS="-S"

C1="./CodeC/bai1"
C2="./CodeC/bai2"
C3="./CodeC/bai3"
C4="./CodeC/bai4"
C5="./CodeC/bai5"
C6="./CodeC/bai6"
C7="./CodeC/bai7"
C8="./CodeC/bai8"
C9="./CodeC/bai9"
C10="./CodeC/bai10"

G1="./Code8086/bai1"
G2="./Code8086/bai2"
G3="./Code8086/bai3"
G4="./Code8086/bai4"
G5="./Code8086/bai5"
G6="./Code8086/bai6"
G7="./Code8086/bai7"
G8="./Code8086/bai8"
G9="./Code8086/bai9"
G10="./Code8086/bai10"

${CXX} ${FLAGS} ${C1}/bai1.c -o ${G1}/bai1_8086.s
${CXX} ${FLAGS} ${C1}/bai1tu.c -o ${G1}/bai1tu_8086.s

${CXX} ${FLAGS} ${C2}/bai2.c -o ${G2}/bai2_8086.s
${CXX} ${FLAGS} ${C2}/bai2tu.c -o ${G2}/bai2tu_8086.s

${CXX} ${FLAGS} ${C3}/bai3.c -o ${G3}/bai3_8086.s
${CXX} ${FLAGS} ${C3}/bai3tu.c -o ${G3}/bai1tu_8086.s

${CXX} ${FLAGS} ${C4}/bai4.c -o ${G4}/bai4_8086.s
${CXX} ${FLAGS} ${C4}/bai4tu.c -o ${G4}/bai4tu_8086.s

${CXX} ${FLAGS} ${C5}/bai5.c -o ${G5}/bai5_8086.s
${CXX} ${FLAGS} ${C5}/bai5tu.c -o ${G5}/bai5tu_8086.s

${CXX} ${FLAGS} ${C6}/bai6.c -o ${G6}/bai6_8086.s
${CXX} ${FLAGS} ${C6}/bai6tu.c -o ${G6}/bai6tu_8086.s

${CXX} ${FLAGS} ${C7}/bai7.c -o ${G7}/bai7_8086.s
${CXX} ${FLAGS} ${C7}/bai7tu.c -o ${G7}/bai7tu_8086.s

${CXX} ${FLAGS} ${C8}/bai8.c -o ${G8}/bai8_8086.s
${CXX} ${FLAGS} ${C8}/bai8tu.c -o ${G8}/bai8tu_8086.s

${CXX} ${FLAGS} ${C9}/bai9.c -o ${G9}/bai9_8086.s
${CXX} ${FLAGS} ${C9}/bai9tu.c -o ${G9}/bai9tu_8086.s

${CXX} ${FLAGS} ${C10}/bai10.c -o ${G10}/bai10_8086.s
${CXX} ${FLAGS} ${C10}/bai10tu.c -o ${G10}/bai10tu_8086.s