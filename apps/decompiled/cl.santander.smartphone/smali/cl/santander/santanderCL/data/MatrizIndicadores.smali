.class public Lcl/santander/santanderCL/data/MatrizIndicadores;
.super Ljava/lang/Object;
.source "MatrizIndicadores.java"


# instance fields
.field indicadores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIndicador;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizIndicadores;->indicadores:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacidad"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcl/santander/santanderCL/data/MatrizIndicadores;->indicadores:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;Ljava/util/Date;)V
    .locals 6
    .param p1, "obj"    # Lorg/ksoap2/serialization/SoapObject;
    .param p2, "tipo"    # Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;
    .param p3, "fecha"    # Ljava/util/Date;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_0

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcl/santander/santanderCL/data/MatrizIndicadores;->indicadores:Ljava/util/ArrayList;

    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 46
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 33
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "info":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v4, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v4, :cond_2

    .line 36
    :try_start_0
    new-instance v3, Lcl/santander/santanderCL/data/response/ItemIndicador;

    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "info":Ljava/lang/Object;
    invoke-direct {v3, v2, p2, p3}, Lcl/santander/santanderCL/data/response/ItemIndicador;-><init>(Lorg/ksoap2/serialization/SoapObject;Lcl/santander/santanderCL/utils/Constant$TIPO_INDICADOR_ECONOMICO;Ljava/util/Date;)V

    .line 37
    .local v3, "item":Lcl/santander/santanderCL/data/response/ItemIndicador;
    iget-object v4, p0, Lcl/santander/santanderCL/data/MatrizIndicadores;->indicadores:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v3    # "item":Lcl/santander/santanderCL/data/response/ItemIndicador;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Lcl/santander/santanderCL/utils/AppLog;->e(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public add(Lcl/santander/santanderCL/data/response/ItemIndicador;)V
    .locals 1
    .param p1, "value"    # Lcl/santander/santanderCL/data/response/ItemIndicador;

    .prologue
    .line 54
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizIndicadores;->indicadores:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public get(I)Lcl/santander/santanderCL/data/response/ItemIndicador;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizIndicadores;->indicadores:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemIndicador;

    return-object v0
.end method

.method public getMatriz()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIndicador;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizIndicadores;->indicadores:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizIndicadores;->indicadores:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcl/santander/santanderCL/data/MatrizIndicadores;->indicadores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
