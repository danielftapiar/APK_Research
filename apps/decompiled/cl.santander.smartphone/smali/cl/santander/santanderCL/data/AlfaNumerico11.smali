.class public Lcl/santander/santanderCL/data/AlfaNumerico11;
.super Ljava/lang/Object;
.source "AlfaNumerico11.java"


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static ValidarRut(IC)Z
    .locals 5
    .param p0, "rut"    # I
    .param p1, "dv"    # C

    .prologue
    .line 39
    const/4 v0, 0x0

    .local v0, "m":I
    const/4 v2, 0x1

    .local v2, "s":I
    move v1, v0

    .line 40
    .end local v0    # "m":I
    .local v1, "m":I
    :goto_0
    if-nez p0, :cond_0

    .line 44
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, 0x2f

    :goto_1
    int-to-char v3, v3

    if-ne p1, v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    return v3

    .line 42
    :cond_0
    rem-int/lit8 v3, p0, 0xa

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "m":I
    .restart local v0    # "m":I
    rem-int/lit8 v4, v1, 0x6

    rsub-int/lit8 v4, v4, 0x9

    mul-int/2addr v3, v4

    add-int/2addr v3, v2

    rem-int/lit8 v2, v3, 0xb

    .line 40
    div-int/lit8 p0, p0, 0xa

    move v1, v0

    .end local v0    # "m":I
    .restart local v1    # "m":I
    goto :goto_0

    .line 44
    :cond_1
    const/16 v3, 0x4b

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private parser(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "rut":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "dv":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lcl/santander/santanderCL/data/AlfaNumerico11;->ValidarRut(IC)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    const/16 v2, 0xb

    const-string v3, "0"

    invoke-static {p1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->rellenarPorIzq(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    .end local v0    # "dv":Ljava/lang/String;
    .end local v1    # "rut":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 26
    .restart local v0    # "dv":Ljava/lang/String;
    .restart local v1    # "rut":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v3, Lcl/santander/santanderCL/data/response/Info;

    const-string v4, "16"

    sget-object v5, Lcl/santander/santanderCL/utils/Constant;->ERROR_RUT:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v2
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcl/santander/santanderCL/data/AlfaNumerico11;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcl/santander/santanderCL/exceptions/InfoException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 50
    new-instance v0, Lcl/santander/santanderCL/exceptions/InfoException;

    new-instance v1, Lcl/santander/santanderCL/data/response/Info;

    const-string v2, "16"

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->ERROR_RUT:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcl/santander/santanderCL/data/response/Info;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/exceptions/InfoException;-><init>(Lcl/santander/santanderCL/data/response/Info;)V

    throw v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcl/santander/santanderCL/data/AlfaNumerico11;->parser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/data/AlfaNumerico11;->value:Ljava/lang/String;

    .line 53
    return-void
.end method
