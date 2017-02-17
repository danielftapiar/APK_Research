.class Lcl/santander/smartphone/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$listeners:[Ljava/lang/Runnable;


# direct methods
.method constructor <init>([Ljava/lang/Runnable;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/santander/smartphone/Utils$3;->val$listeners:[Ljava/lang/Runnable;

    iput-object p2, p0, Lcl/santander/smartphone/Utils$3;->val$dialog:Landroid/app/Dialog;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 280
    iget-object v1, p0, Lcl/santander/smartphone/Utils$3;->val$listeners:[Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcl/santander/smartphone/Utils$3;->val$listeners:[Ljava/lang/Runnable;

    aget-object v0, v1, v2

    .line 282
    .local v0, "run":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcl/santander/smartphone/Utils$3;->val$listeners:[Ljava/lang/Runnable;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 285
    .end local v0    # "run":Ljava/lang/Runnable;
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/Utils$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 286
    return-void
.end method
