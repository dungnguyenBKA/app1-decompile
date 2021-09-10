.class final synthetic Lcom/google/firebase/remoteconfig/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldw;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/f;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/a;->a:Lcom/google/firebase/remoteconfig/f;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/f;)Ldw;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/a;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/a;-><init>(Lcom/google/firebase/remoteconfig/f;)V

    return-object v0
.end method


# virtual methods
.method public then(Lkw;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->a:Lcom/google/firebase/remoteconfig/f;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/f;->a(Lcom/google/firebase/remoteconfig/f;Lkw;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
