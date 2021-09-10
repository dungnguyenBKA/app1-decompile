.class final synthetic Lcom/google/firebase/remoteconfig/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldw;


# instance fields
.field private final a:Lcom/google/firebase/remoteconfig/internal/k;

.field private final b:Lkw;

.field private final c:Lkw;

.field private final d:Ljava/util/Date;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/internal/k;Lkw;Lkw;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/h;->a:Lcom/google/firebase/remoteconfig/internal/k;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/h;->b:Lkw;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/h;->c:Lkw;

    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/h;->d:Ljava/util/Date;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/internal/k;Lkw;Lkw;Ljava/util/Date;)Ldw;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/internal/h;-><init>(Lcom/google/firebase/remoteconfig/internal/k;Lkw;Lkw;Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public then(Lkw;)Ljava/lang/Object;
    .locals 3

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/h;->a:Lcom/google/firebase/remoteconfig/internal/k;

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/h;->b:Lkw;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/h;->c:Lkw;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/h;->d:Ljava/util/Date;

    invoke-static {p1, v0, v1, v2}, Lcom/google/firebase/remoteconfig/internal/k;->d(Lcom/google/firebase/remoteconfig/internal/k;Lkw;Lkw;Ljava/util/Date;)Lkw;

    move-result-object p1

    return-object p1
.end method
