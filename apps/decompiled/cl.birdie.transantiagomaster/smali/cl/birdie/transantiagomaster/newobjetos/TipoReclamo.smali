.class public final Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
.super Ljava/lang/Object;
.source "TipoReclamo.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public duracion:I

.field public facebook:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:I

.field public lang:Ljava/lang/String;

.field public objeto:Ljava/lang/String;

.field public smallIcon:Ljava/lang/String;

.field public texto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->texto:Ljava/lang/String;

    return-object v0
.end method
