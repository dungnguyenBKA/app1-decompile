.class final synthetic Lcom/google/android/gms/ads/internal/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final b:Lcom/google/android/gms/ads/internal/util/zzad;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzad;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/b;->b:Lcom/google/android/gms/ads/internal/util/zzad;

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/b;->c:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/b;->d:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/b;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/b;->b:Lcom/google/android/gms/ads/internal/util/zzad;

    iget v0, p0, Lcom/google/android/gms/ads/internal/util/b;->c:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/b;->d:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/b;->e:I

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/android/gms/ads/internal/util/zzad;->a(IIII)V

    return-void
.end method
