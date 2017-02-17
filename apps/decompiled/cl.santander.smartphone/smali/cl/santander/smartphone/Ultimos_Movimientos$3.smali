.class Lcl/santander/smartphone/Ultimos_Movimientos$3;
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
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos$3;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos$3;->this$0:Lcl/santander/smartphone/Ultimos_Movimientos;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->setActiveTabButton(I)V

    .line 218
    return-void
.end method
