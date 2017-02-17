.class Lcl/santander/smartphone/Ultimos_Movimientos$1;
.super Ljava/lang/Object;
.source "Ultimos_Movimientos.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Ultimos_Movimientos;->onActivityCreated(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$1;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$1;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    # invokes: Lcl/santander/smartphone/Ultimos_Movimientos;->filtradoFecha()V
    invoke-static {v0}, Lcl/santander/smartphone/Ultimos_Movimientos;->access$3(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    .line 185
    return-void
.end method
