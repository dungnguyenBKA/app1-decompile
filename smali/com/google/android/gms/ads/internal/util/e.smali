.class final synthetic Lcom/google/android/gms/ads/internal/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final b:Lcom/google/android/gms/ads/internal/util/zzad;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzad;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/e;->b:Lcom/google/android/gms/ads/internal/util/zzad;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/e;->b:Lcom/google/android/gms/ads/internal/util/zzad;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/util/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzad;->b(Ljava/lang/String;)V

    return-void
.end method
