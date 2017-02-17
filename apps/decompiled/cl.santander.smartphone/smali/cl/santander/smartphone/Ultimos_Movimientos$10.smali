.class Lcl/santander/smartphone/Ultimos_Movimientos$10;
.super Ljava/lang/Object;
.source "Ultimos_Movimientos.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Ultimos_Movimientos;->filtrado(Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/Ultimos_Movimientos;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$10;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$10;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # invokes: Lcl/santander/smartphone/Ultimos_Movimientos;->filtradoFecha()V
    invoke-static {v0}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$3(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    .line 577
    return-void
.end method
