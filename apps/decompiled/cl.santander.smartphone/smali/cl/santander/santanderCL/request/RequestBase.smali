.class public Lcl/santander/santanderCL/request/RequestBase;
.super Ljava/lang/Object;
.source "RequestBase.java"

# interfaces
.implements Lorg/ksoap2/serialization/KvmSerializable;


# instance fields
.field protected fachada:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcl/santander/santanderCL/request/RequestBase;->fachada:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getAttributeProperty(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcl/santander/santanderCL/request/RequestBase;->fachada:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributePropertyCount()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributePropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 49
    :pswitch_0
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 50
    const-string v0, "facade"

    iput-object v0, p3, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getFachada()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcl/santander/santanderCL/request/RequestBase;->fachada:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "info"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 80
    return-void
.end method

.method public setAttributeProperty(ILjava/lang/String;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p2, p0, Lcl/santander/santanderCL/request/RequestBase;->fachada:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setFachada(Ljava/lang/String;)V
    .locals 0
    .param p1, "fachada"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcl/santander/santanderCL/request/RequestBase;->fachada:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 73
    return-void
.end method
