.class public Lcom/google/firebase/remoteconfig/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/k$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/k$b;Lcom/google/firebase/remoteconfig/k$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/k$b;->a(Lcom/google/firebase/remoteconfig/k$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/remoteconfig/k;->a:J

    .line 3
    invoke-static {p1}, Lcom/google/firebase/remoteconfig/k$b;->b(Lcom/google/firebase/remoteconfig/k$b;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/k;->b:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/remoteconfig/k;->a:J

    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/remoteconfig/k;->b:J

    return-wide v0
.end method
