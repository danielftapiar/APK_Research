.class public Lcom/attify/sqliteapp/Form;
.super Ljava/lang/Object;
.source "Form.java"


# instance fields
.field private email:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/attify/sqliteapp/Form;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/attify/sqliteapp/Form;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/attify/sqliteapp/Form;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/attify/sqliteapp/Form;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/attify/sqliteapp/Form;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/attify/sqliteapp/Form;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/attify/sqliteapp/Form;->email:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/attify/sqliteapp/Form;->firstName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/attify/sqliteapp/Form;->lastName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/attify/sqliteapp/Form;->password:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/attify/sqliteapp/Form;->phoneNumber:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/attify/sqliteapp/Form;->username:Ljava/lang/String;

    .line 38
    return-void
.end method
