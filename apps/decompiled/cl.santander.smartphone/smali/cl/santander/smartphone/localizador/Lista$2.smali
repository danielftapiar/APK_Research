.class Lcl/santander/smartphone/localizador/Lista$2;
.super Ljava/lang/Object;
.source "Lista.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Lista;->cargarListado()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/santander/smartphone/localizador/Lista;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Lista;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Lista$2;->this$0:Lcl/santander/smartphone/localizador/Lista;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista$2;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/Lista;->lista:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista$2;->this$0:Lcl/santander/smartphone/localizador/Lista;

    invoke-virtual {v0, p3}, Lcl/santander/smartphone/localizador/Lista;->verDetalle(I)V

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
