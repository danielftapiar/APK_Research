.class Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$2;
.super Ljava/lang/Object;
.source "DetalleUltimosMovimientosTarjeta.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta$2;->this$0:Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 672
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
