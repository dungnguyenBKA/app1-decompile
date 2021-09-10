.class final synthetic Lcom/google/firebase/remoteconfig/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldw;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/f;

.field private final b:Lkw;

.field private final c:Lkw;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/f;Lkw;Lkw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/c;->a:Lcom/google/firebase/remoteconfig/f;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/c;->b:Lkw;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/c;->c:Lkw;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/f;Lkw;Lkw;)Ldw;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/remoteconfig/c;-><init>(Lcom/google/firebase/remoteconfig/f;Lkw;Lkw;)V

    return-object v0
.end method


# virtual methods
.method public then(Lkw;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/c;->a:Lcom/google/firebase/remoteconfig/f;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/c;->b:Lkw;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/c;->c:Lkw;

    invoke-static {p1, v0, v1}, Lcom/google/firebase/remoteconfig/f;->h(Lcom/google/firebase/remoteconfig/f;Lkw;Lkw;)Lkw;

    move-result-object p1

    return-object p1
.end method
