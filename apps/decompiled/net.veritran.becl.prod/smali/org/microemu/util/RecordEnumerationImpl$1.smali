.class Lorg/microemu/util/RecordEnumerationImpl$1;
.super Ljava/lang/Object;
.source "RecordEnumerationImpl.java"

# interfaces
.implements Ljavax/microedition/rms/RecordListener;


# instance fields
.field private final this$0:Lorg/microemu/util/RecordEnumerationImpl;


# direct methods
.method constructor <init>(Lorg/microemu/util/RecordEnumerationImpl;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/microemu/util/RecordEnumerationImpl$1;->this$0:Lorg/microemu/util/RecordEnumerationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordAdded(Ljavax/microedition/rms/RecordStore;I)V
    .locals 1
    .param p1, "recordStore"    # Ljavax/microedition/rms/RecordStore;
    .param p2, "recordId"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl$1;->this$0:Lorg/microemu/util/RecordEnumerationImpl;

    invoke-virtual {v0}, Lorg/microemu/util/RecordEnumerationImpl;->rebuild()V

    .line 56
    return-void
.end method

.method public recordChanged(Ljavax/microedition/rms/RecordStore;I)V
    .locals 1
    .param p1, "recordStore"    # Ljavax/microedition/rms/RecordStore;
    .param p2, "recordId"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl$1;->this$0:Lorg/microemu/util/RecordEnumerationImpl;

    invoke-virtual {v0}, Lorg/microemu/util/RecordEnumerationImpl;->rebuild()V

    .line 60
    return-void
.end method

.method public recordDeleted(Ljavax/microedition/rms/RecordStore;I)V
    .locals 1
    .param p1, "recordStore"    # Ljavax/microedition/rms/RecordStore;
    .param p2, "recordId"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lorg/microemu/util/RecordEnumerationImpl$1;->this$0:Lorg/microemu/util/RecordEnumerationImpl;

    invoke-virtual {v0}, Lorg/microemu/util/RecordEnumerationImpl;->rebuild()V

    .line 64
    return-void
.end method
