.class final Lcom/google/android/gms/measurement/internal/t7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Landroid/content/ComponentName;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t7;->b:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t7;->c:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y7;->c:Lcom/google/android/gms/measurement/internal/z7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t7;->b:Landroid/content/ComponentName;

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/z7;->w(Lcom/google/android/gms/measurement/internal/z7;Landroid/content/ComponentName;)V

    return-void
.end method
