.class Lcl/santander/smartphone/EstadoCuentaPDF$1;
.super Ljava/lang/Object;
.source "EstadoCuentaPDF.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/EstadoCuentaPDF;->verEstadoCuenta()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/EstadoCuentaPDF;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/EstadoCuentaPDF;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/EstadoCuentaPDF$1;->this$0:Lcl/santander/smartphone/EstadoCuentaPDF;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcl/santander/smartphone/EstadoCuentaPDF$1;->this$0:Lcl/santander/smartphone/EstadoCuentaPDF;

    # getter for: Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;
    invoke-static {v0}, Lcl/santander/smartphone/EstadoCuentaPDF;->access$0(Lcl/santander/smartphone/EstadoCuentaPDF;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 211
    iget-object v0, p0, Lcl/santander/smartphone/EstadoCuentaPDF$1;->this$0:Lcl/santander/smartphone/EstadoCuentaPDF;

    # getter for: Lcl/santander/smartphone/EstadoCuentaPDF;->act:Landroid/app/Activity;
    invoke-static {v0}, Lcl/santander/smartphone/EstadoCuentaPDF;->access$0(Lcl/santander/smartphone/EstadoCuentaPDF;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 212
    return-void
.end method
