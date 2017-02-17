.class Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameProcessingRunnable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActive:Z

.field private mDetector:Lcom/google/android/gms/vision/Detector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Detector",
            "<*>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPendingFrameData:Ljava/nio/ByteBuffer;

.field private mPendingFrameId:I

.field private mPendingTimeMillis:J

.field private mStartTimeMillis:J

.field final synthetic this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 685
    const-class v0, Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/google/android/gms/vision/Detector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p2, "detector":Lcom/google/android/gms/vision/Detector;, "Lcom/google/android/gms/vision/Detector<*>;"
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mStartTimeMillis:J

    .line 689
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mLock:Ljava/lang/Object;

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mActive:Z

    .line 693
    const/4 v0, 0x0

    iput v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameId:I

    .line 697
    iput-object p2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mDetector:Lcom/google/android/gms/vision/Detector;

    .line 698
    return-void
.end method


# virtual methods
.method release()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    .prologue
    .line 702
    sget-boolean v0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mProcessingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$2000(Lcom/prey/barcodereader/ui/camera/CameraSource;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mDetector:Lcom/google/android/gms/vision/Detector;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Detector;->release()V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mDetector:Lcom/google/android/gms/vision/Detector;

    .line 705
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 742
    :goto_0
    iget-object v5, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 743
    :goto_1
    :try_start_0
    iget-boolean v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mActive:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameData:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 745
    :try_start_1
    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 746
    :catch_0
    move-exception v1

    .line 747
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "Frame processing loop terminated."

    invoke-static {v4, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 748
    monitor-exit v5

    .line 753
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return-void

    .line 752
    :cond_0
    iget-boolean v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mActive:Z

    if-nez v4, :cond_1

    .line 753
    monitor-exit v5

    goto :goto_2

    .line 766
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 756
    :cond_1
    :try_start_3
    new-instance v4, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameData:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    .line 757
    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;
    invoke-static {v7}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$2300(Lcom/prey/barcodereader/ui/camera/CameraSource;)Lcom/google/android/gms/common/images/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    .line 758
    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;
    invoke-static {v8}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$2300(Lcom/prey/barcodereader/ui/camera/CameraSource;)Lcom/google/android/gms/common/images/Size;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x11

    .line 757
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/google/android/gms/vision/Frame$Builder;->setImageData(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v4

    iget v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameId:I

    .line 759
    invoke-virtual {v4, v6}, Lcom/google/android/gms/vision/Frame$Builder;->setId(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v4

    iget-wide v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingTimeMillis:J

    .line 760
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/vision/Frame$Builder;->setTimestampMillis(J)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    .line 761
    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mRotation:I
    invoke-static {v6}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$2200(Lcom/prey/barcodereader/ui/camera/CameraSource;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object v4

    .line 762
    invoke-virtual {v4}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object v2

    .line 764
    .local v2, "outputFrame":Lcom/google/android/gms/vision/Frame;
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameData:Ljava/nio/ByteBuffer;

    .line 765
    .local v0, "data":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameData:Ljava/nio/ByteBuffer;

    .line 766
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 770
    :try_start_4
    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mDetector:Lcom/google/android/gms/vision/Detector;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/vision/Detector;->receiveFrame(Lcom/google/android/gms/vision/Frame;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 774
    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$1800(Lcom/prey/barcodereader/ui/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 771
    :catch_1
    move-exception v3

    .line 772
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_5
    const-string v4, "Exception thrown from receiver."

    invoke-static {v4, v3}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 774
    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;
    invoke-static {v4}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$1800(Lcom/prey/barcodereader/ui/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$1800(Lcom/prey/barcodereader/ui/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    throw v4
.end method

.method setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 708
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 709
    :try_start_0
    iput-boolean p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mActive:Z

    .line 710
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 711
    monitor-exit v1

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setNextFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 715
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameData:Ljava/nio/ByteBuffer;

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mBytesToByteBuffer:Ljava/util/Map;
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$2100(Lcom/prey/barcodereader/ui/camera/CameraSource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    const-string v0, "Skipping frame.  Could not find ByteBuffer associated with the image data from the camera."

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 725
    monitor-exit v1

    .line 734
    :goto_0
    return-void

    .line 728
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mStartTimeMillis:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingTimeMillis:J

    .line 729
    iget v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameId:I

    .line 730
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mBytesToByteBuffer:Ljava/util/Map;
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$2100(Lcom/prey/barcodereader/ui/camera/CameraSource;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mPendingFrameData:Ljava/nio/ByteBuffer;

    .line 732
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 733
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
