.class public final Lcom/google/android/gms/common/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Lz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->b:Lz;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lz;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, v1}, Lz;-><init>(I)V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->b:Lz;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->b:Lz;

    invoke-virtual {v0, p1}, Lz;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final b(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/c;
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/accounts/Account;

    return-object p0
.end method
