.class public Lcl/santander/santanderCL/data/MatrizProductos;
.super Ljava/lang/Object;
.source "MatrizProductos.java"


# instance fields
.field private divisa:Ljava/lang/String;

.field private fTotal:D

.field private grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

.field private m_iSelected:I

.field private matrizProductos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemProducto;",
            ">;"
        }
    .end annotation
.end field

.field private variasDivisas:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lcl/santander/santanderCL/data/MatrizProductos;->variasDivisas:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->fTotal:D

    .line 23
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->SIN_GRUPO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .line 24
    iput v2, p0, Lcl/santander/santanderCL/data/MatrizProductos;->m_iSelected:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v2, p0, Lcl/santander/santanderCL/data/MatrizProductos;->variasDivisas:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->fTotal:D

    .line 23
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->SIN_GRUPO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .line 24
    iput v2, p0, Lcl/santander/santanderCL/data/MatrizProductos;->m_iSelected:I

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V
    .locals 4
    .param p1, "idGrupo"    # Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v3, p0, Lcl/santander/santanderCL/data/MatrizProductos;->variasDivisas:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    .line 22
    iput-wide v1, p0, Lcl/santander/santanderCL/data/MatrizProductos;->fTotal:D

    .line 23
    sget-object v0, Lcl/santander/santanderCL/utils/Constant$GRUPO;->SIN_GRUPO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .line 24
    iput v3, p0, Lcl/santander/santanderCL/data/MatrizProductos;->m_iSelected:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    .line 38
    iput-wide v1, p0, Lcl/santander/santanderCL/data/MatrizProductos;->fTotal:D

    .line 39
    iput-object p1, p0, Lcl/santander/santanderCL/data/MatrizProductos;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;)V
    .locals 7
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v6, p0, Lcl/santander/santanderCL/data/MatrizProductos;->variasDivisas:Z

    .line 21
    const/4 v4, 0x0

    iput-object v4, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    .line 22
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcl/santander/santanderCL/data/MatrizProductos;->fTotal:D

    .line 23
    sget-object v4, Lcl/santander/santanderCL/utils/Constant$GRUPO;->SIN_GRUPO:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    iput-object v4, p0, Lcl/santander/santanderCL/data/MatrizProductos;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    .line 24
    iput v6, p0, Lcl/santander/santanderCL/data/MatrizProductos;->m_iSelected:I

    .line 45
    if-eqz p1, :cond_0

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 67
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 50
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    .line 52
    .local v2, "info":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_2

    .line 54
    :try_start_0
    new-instance v3, Lcl/santander/santanderCL/data/response/ItemProducto;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "info":Ljava/lang/Object;
    invoke-direct {v3, v2, p2}, Lcl/santander/santanderCL/data/response/ItemProducto;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_MATRIZ;)V

    .line 56
    .local v3, "item":Lcl/santander/santanderCL/data/response/ItemProducto;
    iget-object v4, p0, Lcl/santander/santanderCL/data/MatrizProductos;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/data/response/ItemProducto;->setGrupo(Lcl/santander/santanderCL/utils/Constant$GRUPO;)V

    .line 57
    iget-object v4, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v3    # "item":Lcl/santander/santanderCL/data/response/ItemProducto;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemProducto;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemProducto;

    .prologue
    .line 96
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemProducto;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemProducto;

    return-object v0
.end method

.method public getDivisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    return-object v0
.end method

.method public getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->grupo:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    return-object v0
.end method

.method public getMatriz()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemProducto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelected()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->m_iSelected:I

    return v0
.end method

.method public getTotal()D
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->fTotal:D

    return-wide v0
.end method

.method public getTotalScreen()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->variasDivisas:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 157
    iget-wide v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->fTotal:D

    iget-object v2, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcl/santander/santanderCL/utils/Constant;->CADENAVACIA:Ljava/lang/String;

    goto :goto_0
.end method

.method public hayVariasDivisas()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->variasDivisas:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public procesarDivisa(Ljava/lang/String;)V
    .locals 2
    .param p1, "divisa"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 74
    iput-object p1, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->variasDivisas:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->fTotal:D

    .line 83
    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    :cond_0
    return-void
.end method

.method public remove(Lcl/santander/santanderCL/data/response/ItemProducto;)Z
    .locals 1
    .param p1, "item"    # Lcl/santander/santanderCL/data/response/ItemProducto;

    .prologue
    .line 102
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDivisa(Ljava/lang/String;)V
    .locals 0
    .param p1, "codigoMoneda"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcl/santander/santanderCL/data/MatrizProductos;->divisa:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setMatriz(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemProducto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "matrices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemProducto;>;"
    iput-object p1, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public setSelected(I)V
    .locals 0
    .param p1, "_i"    # I

    .prologue
    .line 136
    iput p1, p0, Lcl/santander/santanderCL/data/MatrizProductos;->m_iSelected:I

    .line 137
    return-void
.end method

.method public setTotal(D)V
    .locals 0
    .param p1, "importe"    # D

    .prologue
    .line 149
    iput-wide p1, p0, Lcl/santander/santanderCL/data/MatrizProductos;->fTotal:D

    .line 150
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizProductos;->matrizProductos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
