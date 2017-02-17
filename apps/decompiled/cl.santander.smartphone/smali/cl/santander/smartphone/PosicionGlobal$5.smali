.class Lcl/santander/smartphone/PosicionGlobal$5;
.super Ljava/lang/Object;
.source "PosicionGlobal.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    iput-object p1, p0, Lcl/santander/smartphone/PosicionGlobal$5;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 258
    iget-object v0, p0, Lcl/santander/smartphone/PosicionGlobal$5;->this$0:Lcl/santander/smartphone/PosicionGlobal;

    # invokes: Lcl/santander/smartphone/PosicionGlobal;->cargaOperativaProducto(II)Z
    invoke-static {v0, p3, p4}, Lcl/santander/smartphone/PosicionGlobal;->access$2(Lcl/santander/smartphone/PosicionGlobal;II)Z

    move-result v0

    return v0
.end method
