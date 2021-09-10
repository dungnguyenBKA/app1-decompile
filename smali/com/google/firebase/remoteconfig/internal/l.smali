.class final synthetic Lcom/google/firebase/remoteconfig/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/common/util/b;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/firebase/remoteconfig/internal/f;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/util/b;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/l;->b:Lcom/google/android/gms/common/util/b;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/l;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/l;->d:Lcom/google/firebase/remoteconfig/internal/f;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/util/b;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/l;-><init>(Lcom/google/android/gms/common/util/b;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/l;->b:Lcom/google/android/gms/common/util/b;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/l;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/l;->d:Lcom/google/firebase/remoteconfig/internal/f;

    .line 1
    sget v3, Lcom/google/firebase/remoteconfig/internal/m;->e:I

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
