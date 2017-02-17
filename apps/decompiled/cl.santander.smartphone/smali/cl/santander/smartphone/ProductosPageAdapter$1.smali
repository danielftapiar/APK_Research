.class Lcl/santander/smartphone/ProductosPageAdapter$1;
.super Ljava/lang/Object;
.source "ProductosPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/ProductosPageAdapter;->getStructure(I)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/ProductosPageAdapter;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/ProductosPageAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/ProductosPageAdapter$1;->this$0:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/ProductosPageAdapter$1;->this$0:Lcl/santander/smartphone/ProductosPageAdapter;

    # getter for: Lcl/santander/smartphone/ProductosPageAdapter;->run:Ljava/lang/Runnable;
    invoke-static {v0}, Lcl/santander/smartphone/ProductosPageAdapter;->access$1(Lcl/santander/smartphone/ProductosPageAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 141
    return-void
.end method
