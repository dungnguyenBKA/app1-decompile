.class final synthetic Lcom/google/firebase/remoteconfig/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljw;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/f;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/b;->a:Lcom/google/firebase/remoteconfig/f;

    return-void
.end method

.method public static b(Lcom/google/firebase/remoteconfig/f;)Ljw;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/b;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/b;-><init>(Lcom/google/firebase/remoteconfig/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lkw;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/b;->a:Lcom/google/firebase/remoteconfig/f;

    check-cast p1, Ljava/lang/Void;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/f;->b()Lkw;

    move-result-object p1

    return-object p1
.end method
