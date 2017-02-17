.class public Lcl/santander/santanderCL/data/Numerico4;
.super Ljava/lang/Object;
.source "Numerico4.java"


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parser(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/LengthException;,
            Lcl/santander/santanderCL/exceptions/FormatException;
        }
    .end annotation

    .prologue
    .line 12
    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 15
    new-instance v2, Lcl/santander/santanderCL/exceptions/LengthException;

    const-string v3, "4"

    invoke-direct {v2, v3, p1}, Lcl/santander/santanderCL/exceptions/LengthException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 19
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcl/santander/santanderCL/utils/ConverterUtil;->convertToInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 26
    :cond_1
    return-object p1

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Lcl/santander/santanderCL/exceptions/FormatException;

    invoke-direct {v2}, Lcl/santander/santanderCL/exceptions/FormatException;-><init>()V

    throw v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcl/santander/santanderCL/data/Numerico4;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/LengthException;,
            Lcl/santander/santanderCL/exceptions/FormatException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcl/santander/santanderCL/data/Numerico4;->parser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/Numerico4;->value:Ljava/lang/String;

    .line 35
    return-void
.end method
