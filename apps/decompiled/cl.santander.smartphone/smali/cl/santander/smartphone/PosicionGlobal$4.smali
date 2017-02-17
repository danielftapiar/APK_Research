.class Lcl/santander/smartphone/PosicionGlobal$4;
.super Ljava/lang/Object;
.source "PosicionGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/PosicionGlobal;->loadProducts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/PosicionGlobal;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/PosicionGlobal;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/PosicionGlobal$4;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$4;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcl/santander/smartphone/PosicionGlobal;->access$0(I)V

    .line 247
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$4;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    iget-object v0, v0, Lcl/santander/smartphone/PosicionGlobal;->list:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    # getter for: Lcl/santander/smartphone/PosicionGlobal;->longitudIndicator:I
    invoke-static {}, Lcl/santander/smartphone/PosicionGlobal;->access$1()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setIndicatorBounds(II)V

    .line 249
    return-void
.end method
