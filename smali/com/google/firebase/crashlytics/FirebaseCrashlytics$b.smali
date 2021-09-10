.class Lcom/google/firebase/crashlytics/FirebaseCrashlytics$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->a(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lzy;Lvy;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Li00;

.field final synthetic d:Lk30;


# direct methods
.method constructor <init>(ZLi00;Lk30;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$b;->b:Z

    iput-object p2, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$b;->c:Li00;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$b;->d:Lk30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$b;->c:Li00;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics$b;->d:Lk30;

    invoke-virtual {v0, v1}, Li00;->j(Ll30;)Lkw;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
