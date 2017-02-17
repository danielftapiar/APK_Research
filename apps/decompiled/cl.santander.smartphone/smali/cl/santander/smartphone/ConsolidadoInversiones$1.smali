.class Lcl/santander/smartphone/ConsolidadoInversiones$1;
.super Ljava/lang/Object;
.source "ConsolidadoInversiones.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/ConsolidadoInversiones;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/ConsolidadoInversiones;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/ConsolidadoInversiones;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/ConsolidadoInversiones$1;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/ConsolidadoInversiones$1;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    invoke-virtual {v0}, Lcl/santander/smartphone/ConsolidadoInversiones;->loadProducts()V

    .line 93
    return-void
.end method
