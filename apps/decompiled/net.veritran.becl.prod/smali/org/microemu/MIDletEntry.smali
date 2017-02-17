.class public Lorg/microemu/MIDletEntry;
.super Ljava/lang/Object;
.source "MIDletEntry.java"


# instance fields
.field private midletClass:Ljava/lang/Class;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "midletClass"    # Ljava/lang/Class;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/microemu/MIDletEntry;->name:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/microemu/MIDletEntry;->midletClass:Ljava/lang/Class;

    .line 41
    return-void
.end method


# virtual methods
.method public getMIDletClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/microemu/MIDletEntry;->midletClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/microemu/MIDletEntry;->name:Ljava/lang/String;

    return-object v0
.end method
