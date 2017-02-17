.class public abstract Lnet/veritran/ard/types/AType;
.super Ljava/lang/Object;
.source "AType.java"

# interfaces
.implements Lnet/veritran/ard/types/Type;


# static fields
.field public static final OBJ_TYPE_BOOLEAN:I = 0x2

.field public static final OBJ_TYPE_NUMBER:I = 0x1

.field public static final OBJ_TYPE_STRING:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOperatorType(Ljava/lang/String;)I
    .locals 3
    .param p1, "op"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/veritran/ard/exception/ARDException;
        }
    .end annotation

    .prologue
    .line 15
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 16
    :cond_0
    new-instance v0, Lnet/veritran/ard/exception/ARDException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperatorType. Se llamo al metodo con el tipo de operacion Nula o Vacia. Ope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/ard/exception/ARDException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    const/4 v0, 0x2

    .line 55
    :goto_0
    return v0

    .line 21
    :cond_2
    const-string v0, ">="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    const/4 v0, 0x3

    goto :goto_0

    .line 24
    :cond_3
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    const/4 v0, 0x4

    goto :goto_0

    .line 26
    :cond_4
    const-string v0, "<="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    const/4 v0, 0x5

    goto :goto_0

    .line 29
    :cond_5
    const-string v0, "!="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    const/4 v0, 0x7

    goto :goto_0

    .line 31
    :cond_6
    const-string v0, "=="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32
    const/4 v0, 0x6

    goto :goto_0

    .line 34
    :cond_7
    const-string v0, "&="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    const/16 v0, 0xf

    goto :goto_0

    .line 37
    :cond_8
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    const/16 v0, 0x9

    goto :goto_0

    .line 39
    :cond_9
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    const/16 v0, 0xa

    goto :goto_0

    .line 41
    :cond_a
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    const/16 v0, 0xb

    goto :goto_0

    .line 43
    :cond_b
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 44
    const/16 v0, 0xc

    goto :goto_0

    .line 45
    :cond_c
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46
    const/16 v0, 0xd

    goto :goto_0

    .line 47
    :cond_d
    const-string v0, "^"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 48
    const/16 v0, 0xe

    goto :goto_0

    .line 50
    :cond_e
    const-string v0, "&&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 52
    :cond_f
    const-string v0, "||"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 54
    :cond_10
    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 55
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 57
    :cond_11
    new-instance v0, Lnet/veritran/ard/exception/ARDException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperatorType. Se llamo al metodo con un tipo de operacion no soportada. Ope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/veritran/ard/exception/ARDException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
