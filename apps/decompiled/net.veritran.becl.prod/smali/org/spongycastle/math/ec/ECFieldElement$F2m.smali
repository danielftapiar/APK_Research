.class public Lorg/spongycastle/math/ec/ECFieldElement$F2m;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final GNB:I = 0x1

.field public static final PPB:I = 0x3

.field public static final TPB:I = 0x2


# instance fields
.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private representation:I

.field private t:I

.field private x:Lorg/spongycastle/math/ec/IntArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 861
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 863
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->t:I

    .line 864
    new-instance v0, Lorg/spongycastle/math/ec/IntArray;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v0, p5, v1}, Lorg/spongycastle/math/ec/IntArray;-><init>(Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    .line 866
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 868
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 885
    :goto_0
    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_3

    .line 887
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_0
    if-lt p3, p4, :cond_1

    .line 874
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_1
    if-gtz p3, :cond_2

    .line 879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_0

    .line 890
    :cond_3
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 891
    iput p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    .line 892
    iput p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    .line 893
    iput p4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    .line 894
    return-void
.end method

.method private constructor <init>(IIIILorg/spongycastle/math/ec/IntArray;)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "x"    # Lorg/spongycastle/math/ec/IntArray;

    .prologue
    .line 912
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 913
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->t:I

    .line 914
    iput-object p5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    .line 915
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 916
    iput p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    .line 917
    iput p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    .line 918
    iput p4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    .line 920
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 922
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 929
    :goto_0
    return-void

    .line 926
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    goto :goto_0
.end method

.method public constructor <init>(IILjava/math/BigInteger;)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 908
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    .line 909
    return-void
.end method

.method public static checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 4
    .param p0, "a"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 961
    instance-of v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-nez v2, :cond_1

    .line 963
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p0

    .line 967
    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .local v0, "aF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    move-object v1, p1

    .line 968
    check-cast v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 970
    .local v1, "bF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-eq v2, v3, :cond_3

    .line 973
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not elements of the same field F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 977
    :cond_3
    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-eq v2, v3, :cond_4

    .line 980
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "One of the field elements are not elements has incorrect representation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 984
    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 991
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/IntArray;

    .local v5, "iarrClone":Lorg/spongycastle/math/ec/IntArray;
    move-object v6, p1

    .line 992
    check-cast v6, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 993
    .local v6, "bF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget-object v0, v6, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/math/ec/IntArray;->addShifted(Lorg/spongycastle/math/ec/IntArray;I)V

    .line 994
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILorg/spongycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1021
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1022
    .local v0, "bInv":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1173
    if-ne p1, p0, :cond_1

    .line 1185
    :cond_0
    :goto_0
    return v1

    .line 1178
    :cond_1
    instance-of v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-nez v3, :cond_2

    move v1, v2

    .line 1180
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1183
    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 1185
    .local v0, "b":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/IntArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    const-string v0, "F2m"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getK1()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    .prologue
    .line 1157
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 1133
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/IntArray;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 17

    .prologue
    .line 1046
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/IntArray;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/math/ec/IntArray;

    .line 1049
    .local v13, "uz":Lorg/spongycastle/math/ec/IntArray;
    new-instance v15, Lorg/spongycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v15, v1}, Lorg/spongycastle/math/ec/IntArray;-><init>(I)V

    .line 1050
    .local v15, "vz":Lorg/spongycastle/math/ec/IntArray;
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v15, v1}, Lorg/spongycastle/math/ec/IntArray;->setBit(I)V

    .line 1051
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lorg/spongycastle/math/ec/IntArray;->setBit(I)V

    .line 1052
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    invoke-virtual {v15, v1}, Lorg/spongycastle/math/ec/IntArray;->setBit(I)V

    .line 1053
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1055
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    invoke-virtual {v15, v1}, Lorg/spongycastle/math/ec/IntArray;->setBit(I)V

    .line 1056
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-virtual {v15, v1}, Lorg/spongycastle/math/ec/IntArray;->setBit(I)V

    .line 1060
    :cond_0
    new-instance v7, Lorg/spongycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v7, v1}, Lorg/spongycastle/math/ec/IntArray;-><init>(I)V

    .line 1061
    .local v7, "g1z":Lorg/spongycastle/math/ec/IntArray;
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lorg/spongycastle/math/ec/IntArray;->setBit(I)V

    .line 1062
    new-instance v6, Lorg/spongycastle/math/ec/IntArray;

    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->t:I

    invoke-direct {v6, v1}, Lorg/spongycastle/math/ec/IntArray;-><init>(I)V

    .line 1065
    .local v6, "g2z":Lorg/spongycastle/math/ec/IntArray;
    :goto_0
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/IntArray;->isZero()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1070
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/IntArray;->bitLength()I

    move-result v1

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/IntArray;->bitLength()I

    move-result v2

    sub-int v10, v1, v2

    .line 1073
    .local v10, "j":I
    if-gez v10, :cond_1

    .line 1075
    move-object v14, v13

    .line 1076
    .local v14, "uzCopy":Lorg/spongycastle/math/ec/IntArray;
    move-object v13, v15

    .line 1077
    move-object v15, v14

    .line 1079
    move-object v8, v7

    .line 1080
    .local v8, "g1zCopy":Lorg/spongycastle/math/ec/IntArray;
    move-object v7, v6

    .line 1081
    move-object v6, v8

    .line 1083
    neg-int v10, v10

    .line 1093
    .end local v8    # "g1zCopy":Lorg/spongycastle/math/ec/IntArray;
    .end local v14    # "uzCopy":Lorg/spongycastle/math/ec/IntArray;
    :cond_1
    shr-int/lit8 v12, v10, 0x5

    .line 1095
    .local v12, "jInt":I
    and-int/lit8 v11, v10, 0x1f

    .line 1096
    .local v11, "jBit":I
    invoke-virtual {v15, v11}, Lorg/spongycastle/math/ec/IntArray;->shiftLeft(I)Lorg/spongycastle/math/ec/IntArray;

    move-result-object v16

    .line 1097
    .local v16, "vzShift":Lorg/spongycastle/math/ec/IntArray;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v12}, Lorg/spongycastle/math/ec/IntArray;->addShifted(Lorg/spongycastle/math/ec/IntArray;I)V

    .line 1101
    invoke-virtual {v6, v11}, Lorg/spongycastle/math/ec/IntArray;->shiftLeft(I)Lorg/spongycastle/math/ec/IntArray;

    move-result-object v9

    .line 1102
    .local v9, "g2zShift":Lorg/spongycastle/math/ec/IntArray;
    invoke-virtual {v7, v9, v12}, Lorg/spongycastle/math/ec/IntArray;->addShifted(Lorg/spongycastle/math/ec/IntArray;I)V

    goto :goto_0

    .line 1105
    .end local v9    # "g2zShift":Lorg/spongycastle/math/ec/IntArray;
    .end local v10    # "j":I
    .end local v11    # "jBit":I
    .end local v12    # "jInt":I
    .end local v16    # "vzShift":Lorg/spongycastle/math/ec/IntArray;
    :cond_2
    new-instance v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILorg/spongycastle/math/ec/IntArray;)V

    return-object v1
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1012
    move-object v6, p1

    check-cast v6, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 1013
    .local v6, "bF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    iget-object v1, v6, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    iget v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/IntArray;->multiply(Lorg/spongycastle/math/ec/IntArray;I)Lorg/spongycastle/math/ec/IntArray;

    move-result-object v5

    .line 1014
    .local v5, "mult":Lorg/spongycastle/math/ec/IntArray;
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    aput v3, v1, v2

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/math/ec/IntArray;->reduce(I[I)V

    .line 1015
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILorg/spongycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .prologue
    .line 1028
    return-object p0
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 1111
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 1033
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/IntArray;->square(I)Lorg/spongycastle/math/ec/IntArray;

    move-result-object v5

    .line 1034
    .local v5, "squared":Lorg/spongycastle/math/ec/IntArray;
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    aput v3, v1, v2

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/math/ec/IntArray;->reduce(I[I)V

    .line 1035
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k1:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k2:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->k3:I

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILorg/spongycastle/math/ec/IntArray;)V

    return-object v0
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1000
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/IntArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/IntArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
