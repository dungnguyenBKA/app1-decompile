.class public Lcom/android/billingclient/api/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/g;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/g;

    invoke-direct {v0}, Lcom/android/billingclient/api/g;-><init>()V

    .line 2
    iget v1, p0, Lcom/android/billingclient/api/g$a;->a:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/g;->d(Lcom/android/billingclient/api/g;I)I

    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/g;->e(Lcom/android/billingclient/api/g;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/g$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/android/billingclient/api/g$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/g$a;->a:I

    return-object p0
.end method
