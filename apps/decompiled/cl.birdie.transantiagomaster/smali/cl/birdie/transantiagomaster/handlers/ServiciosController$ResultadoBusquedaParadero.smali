.class public final Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;
.super Ljava/lang/Object;
.source "ServiciosController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/handlers/ServiciosController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultadoBusquedaParadero"
.end annotation


# instance fields
.field public idx:I

.field public sentido:I

.field final synthetic this$0:Lcl/birdie/transantiagomaster/handlers/ServiciosController;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/handlers/ServiciosController;II)V
    .locals 0
    .param p2, "idx"    # I
    .param p3, "sentido"    # I

    .prologue
    .line 149
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;->this$0:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p2, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;->idx:I

    .line 151
    iput p3, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosController$ResultadoBusquedaParadero;->sentido:I

    .line 152
    return-void
.end method
