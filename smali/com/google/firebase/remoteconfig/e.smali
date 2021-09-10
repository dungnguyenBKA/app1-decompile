.class final synthetic Lcom/google/firebase/remoteconfig/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final b:Lcom/google/firebase/remoteconfig/f;

.field private final c:Lcom/google/firebase/remoteconfig/k;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/f;Lcom/google/firebase/remoteconfig/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/e;->b:Lcom/google/firebase/remoteconfig/f;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/e;->c:Lcom/google/firebase/remoteconfig/k;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/f;Lcom/google/firebase/remoteconfig/k;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/e;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/remoteconfig/e;-><init>(Lcom/google/firebase/remoteconfig/f;Lcom/google/firebase/remoteconfig/k;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/e;->b:Lcom/google/firebase/remoteconfig/f;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/e;->c:Lcom/google/firebase/remoteconfig/k;

    invoke-static {v0, v1}, Lcom/google/firebase/remoteconfig/f;->i(Lcom/google/firebase/remoteconfig/f;Lcom/google/firebase/remoteconfig/k;)Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
