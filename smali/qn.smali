.class public Lqn;
.super Lpn;
.source "SourceFile"


# instance fields
.field private c:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private d:[I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpn;-><init>()V

    .line 2
    iput-object p1, p0, Lqn;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 3
    iput-object p2, p0, Lqn;->d:[I

    return-void
.end method


# virtual methods
.method public b()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lqn;->d:[I

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lqn;->c:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method
