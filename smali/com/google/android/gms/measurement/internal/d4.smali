.class final Lcom/google/android/gms/measurement/internal/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/g4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/g4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d4;->b:Lcom/google/android/gms/measurement/internal/g4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/d4;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/d4;->b:Lcom/google/android/gms/measurement/internal/g4;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/d5;->a:Lcom/google/android/gms/measurement/internal/j4;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/j4;->c()Lcom/google/android/gms/measurement/internal/i3;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i3;->n()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d4;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/g3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
