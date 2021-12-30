#!/bin/bash

CXX="arm-linux-gnueabi-gcc"
FLAGS="-O2 -S"

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

G1="./CodeArm/bai1"
G2="./CodeArm/bai2"
G3="./CodeArm/bai3"
G4="./CodeArm/bai4"
G5="./CodeArm/bai5"
G6="./CodeArm/bai6"
G7="./CodeArm/bai7"
G8="./CodeArm/bai8"
G9="./CodeArm/bai9"
G10="./CodeArm/bai10"

${CXX} ${FLAGS} ${C1}/bai1tu.c

${CXX} ${FLAGS} ${C2}/bai2tu.c 

${CXX} ${FLAGS} ${C3}/bai3tu.c 

${CXX} ${FLAGS} ${C4}/bai4tu.c 

${CXX} ${FLAGS} ${C5}/bai5tu.c 

${CXX} ${FLAGS} ${C6}/bai6tu.c 

${CXX} ${FLAGS} ${C7}/bai7tu.c 

${CXX} ${FLAGS} ${C8}/bai8tu.c 

${CXX} ${FLAGS} ${C9}/bai9tu.c 

${CXX} ${FLAGS} ${C10}/bai10tu.c 