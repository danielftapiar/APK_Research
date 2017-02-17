.class final Lcl/santander/santanderCL/famtec/android/maps/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;


# direct methods
.method constructor <init>(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/b;->a:Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v0, -0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v0, 0xa

    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/b;->a:Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/b;->a:Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->b(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;)Lcom/google/android/maps/MapView;

    move-result-object v0

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/b;->a:Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    invoke-static {v2}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/b;->a:Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->a(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;Landroid/view/View;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/b;->a:Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    invoke-static {v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->c(Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
