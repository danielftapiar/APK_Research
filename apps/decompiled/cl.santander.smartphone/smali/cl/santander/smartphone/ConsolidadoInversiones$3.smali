.class Lcl/santander/smartphone/ConsolidadoInversiones$3;
.super Ljava/lang/Object;
.source "ConsolidadoInversiones.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/ConsolidadoInversiones;->loadProducts()V
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
    iput-object p1, p0, Lcl/santander/smartphone/ConsolidadoInversiones$3;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 199
    iget-object v1, p0, Lcl/santander/smartphone/ConsolidadoInversiones$3;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 200
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f060062

    new-instance v3, Lcl/santander/smartphone/Inversiones;

    iget-object v1, p0, Lcl/santander/smartphone/ConsolidadoInversiones$3;->this$0:Lcl/santander/smartphone/ConsolidadoInversiones;

    iget-object v1, v1, Lcl/santander/smartphone/ConsolidadoInversiones;->list:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-direct {v3, v1, p4}, Lcl/santander/smartphone/Inversiones;-><init>(Lcl/santander/santanderCL/data/MatrizInversiones;I)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 202
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 205
    const/4 v1, 0x1

    return v1
.end method
