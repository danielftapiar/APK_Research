.class final Lcl/birdie/transantiagomaster/MainActivity$38;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$toast:I


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$38;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput p2, p0, Lcl/birdie/transantiagomaster/MainActivity$38;->val$toast:I

    .line 3150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 3152
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$38;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget v1, p0, Lcl/birdie/transantiagomaster/MainActivity$38;->val$toast:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3153
    return-void
.end method
