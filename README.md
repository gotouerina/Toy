# Batch-Builder
A  script to build batch for ParaFly

Considering an example for only one variable:

【faSize *.fa -detailed > *.sizes】

You can understand that this commond line can usually be splited into these parts

【constant1 variable.suffix1 constant2 > variable.suffix2】

and for this example constant1 = faSize, suffix1 = fa constant2 = -detailed suffix2 = sizes ,and the variables are set in a batch_file

Not surprisingly，the constant can be blank by enter a space. Your can do [sh batch_standard.sh] to build the batch

Also,considering the follow situation

【samtools faidx *.fa】

These commond line can be splited in follow parts:

【constant1 variable.suffix constant2】

constant1 = samtools faudx suffix =  fa constant2 = blank

you can do [sh batch_noneout.sh] to build this type of batch

If you want to run the batch_run.sh,Please Uncomment the the last two lines.Before this, you should make sure you install the ParaFly software.
  
  
If not ,you can type 【conda install ParaFly】

