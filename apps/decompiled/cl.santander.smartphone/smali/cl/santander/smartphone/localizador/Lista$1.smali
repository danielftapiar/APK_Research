.class Lcl/santander/smartphone/localizador/Lista$1;
.super Ljava/lang/Object;
.source "Lista.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/localizador/Lista;->cargarListado()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field anterior:I

.field final synthetic this$0:Lcl/santander/smartphone/localizador/Lista;


# direct methods
.method constructor <init>(Lcl/santander/smartphone/localizador/Lista;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/localizador/Lista$1;->this$0:Lcl/santander/smartphone/localizador/Lista;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcl/santander/smartphone/localizador/Lista$1;->anterior:I

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 144
    iget v0, p0, Lcl/santander/smartphone/localizador/Lista$1;->anterior:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcl/santander/smartphone/localizador/Lista$1;->anterior:I

    if-eq v0, p1, :cond_0

    .line 145
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Lista$1;->this$0:Lcl/santander/smartphone/localizador/Lista;

    iget-object v0, v0, Lcl/santander/smartphone/localizador/Lista;->lista:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcl/santander/smartphone/localizador/Lista$1;->anterior:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 147
    :cond_0
    iput p1, p0, Lcl/santander/smartphone/localizador/Lista$1;->anterior:I

    .line 149
    return-void
.end method
