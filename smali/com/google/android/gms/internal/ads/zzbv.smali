.class public final Lcom/google/android/gms/internal/ads/zzbv;
.super Lcom/google/android/gms/internal/ads/zzepk;
.source "SourceFile"


# instance fields
.field private zzdr:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzl(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbv;->zzdr:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method
