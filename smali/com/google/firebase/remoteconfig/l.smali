.class final synthetic Lcom/google/firebase/remoteconfig/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final b:Lcom/google/firebase/remoteconfig/n;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/l;->b:Lcom/google/firebase/remoteconfig/n;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/n;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/l;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/l;-><init>(Lcom/google/firebase/remoteconfig/n;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/l;->b:Lcom/google/firebase/remoteconfig/n;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/n;->c()Lcom/google/firebase/remoteconfig/f;

    move-result-object v0

    return-object v0
.end method
