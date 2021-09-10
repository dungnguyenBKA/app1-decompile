.class public final Lcom/google/android/gms/measurement/internal/zzaa;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/measurement/internal/zzkg;

.field public e:J

.field public f:Z

.field public g:Ljava/lang/String;

.field public final h:Lcom/google/android/gms/measurement/internal/zzas;

.field public i:J

.field public j:Lcom/google/android/gms/measurement/internal/zzas;

.field public final k:J

.field public final l:Lcom/google/android/gms/measurement/internal/zzas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->b:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->c:Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->d:Lcom/google/android/gms/measurement/internal/zzkg;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->d:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 5
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->e:J

    .line 6
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Z

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->h:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Lcom/google/android/gms/measurement/internal/zzas;

    .line 9
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->i:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->i:J

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->j:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->j:Lcom/google/android/gms/measurement/internal/zzas;

    .line 11
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->k:J

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->l:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->l:Lcom/google/android/gms/measurement/internal/zzas;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzkg;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;JLcom/google/android/gms/measurement/internal/zzas;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzaa;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzaa;->d:Lcom/google/android/gms/measurement/internal/zzkg;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/zzaa;->e:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Lcom/google/android/gms/measurement/internal/zzas;

    iput-wide p9, p0, Lcom/google/android/gms/measurement/internal/zzaa;->i:J

    iput-object p11, p0, Lcom/google/android/gms/measurement/internal/zzaa;->j:Lcom/google/android/gms/measurement/internal/zzas;

    iput-wide p12, p0, Lcom/google/android/gms/measurement/internal/zzaa;->k:J

    iput-object p14, p0, Lcom/google/android/gms/measurement/internal/zzaa;->l:Lcom/google/android/gms/measurement/internal/zzas;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->c:Ljava/lang/String;

    const/4 v2, 0x3

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->d:Lcom/google/android/gms/measurement/internal/zzkg;

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->e:J

    const/4 v4, 0x5

    .line 5
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Z

    const/4 v2, 0x6

    .line 6
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->g:Ljava/lang/String;

    const/4 v2, 0x7

    .line 7
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->r(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Lcom/google/android/gms/measurement/internal/zzas;

    const/16 v2, 0x8

    .line 8
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->i:J

    const/16 v4, 0x9

    .line 9
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->j:Lcom/google/android/gms/measurement/internal/zzas;

    const/16 v2, 0xa

    .line 10
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->k:J

    const/16 v4, 0xb

    .line 11
    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->n(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->l:Lcom/google/android/gms/measurement/internal/zzas;

    const/16 v2, 0xc

    .line 12
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 13
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
