.class final Lcom/google/android/gms/measurement/internal/w7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w7;->b:Lcom/google/android/gms/measurement/internal/y7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w7;->b:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y7;->c:Lcom/google/android/gms/measurement/internal/z7;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/z7;->x(Lcom/google/android/gms/measurement/internal/z7;)Lcom/google/android/gms/measurement/internal/y2;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w7;->b:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y7;->c:Lcom/google/android/gms/measurement/internal/z7;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/z7;->y(Lcom/google/android/gms/measurement/internal/z7;)V

    return-void
.end method
