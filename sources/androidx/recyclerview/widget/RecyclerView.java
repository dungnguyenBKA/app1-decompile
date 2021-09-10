package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.R$styleable;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.c0;
import androidx.recyclerview.widget.d;
import androidx.recyclerview.widget.d0;
import androidx.recyclerview.widget.m;
import androidx.recyclerview.widget.y;
import defpackage.n3;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class RecyclerView extends ViewGroup implements s2 {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    static final boolean ALLOW_THREAD_GAP_WORK;
    static final boolean DEBUG = false;
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD = false;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final int MAX_SCROLL_DURATION = 2000;
    private static final int[] NESTED_SCROLLING_ATTRS = {16843830};
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    static final boolean POST_UPDATES_ON_ANIMATION = true;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static final Interpolator sQuinticInterpolator = new c();
    y mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    g mAdapter;
    a mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private j mChildDrawingOrderCallback;
    d mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private k mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    m mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private r mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    l mItemAnimator;
    private l.b mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<n> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastTouchX;
    private int mLastTouchY;
    o mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final w mObserver;
    private List<p> mOnChildAttachStateListeners;
    private q mOnFlingListener;
    private final ArrayList<r> mOnItemTouchListeners;
    final List<b0> mPendingAccessibilityImportanceChange;
    private SavedState mPendingSavedState;
    boolean mPostedAnimatorRunner;
    m.b mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final u mRecycler;
    v mRecyclerListener;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private s mScrollListener;
    private List<s> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private t2 mScrollingChildHelper;
    final y mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final a0 mViewFlinger;
    private final d0.b mViewInfoProcessCallback;
    final d0 mViewInfoStore;

    class a implements Runnable {
        a() {
        }

        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mFirstLayoutComplete && !recyclerView.isLayoutRequested()) {
                RecyclerView recyclerView2 = RecyclerView.this;
                if (!recyclerView2.mIsAttached) {
                    recyclerView2.requestLayout();
                } else if (recyclerView2.mLayoutSuppressed) {
                    recyclerView2.mLayoutWasDefered = true;
                } else {
                    recyclerView2.consumePendingUpdateOperations();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public class a0 implements Runnable {
        private int b;
        private int c;
        OverScroller d;
        Interpolator e;
        private boolean f = false;
        private boolean g = false;

        a0() {
            Interpolator interpolator = RecyclerView.sQuinticInterpolator;
            this.e = interpolator;
            this.d = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        public void a(int i, int i2) {
            RecyclerView.this.setScrollState(2);
            this.c = 0;
            this.b = 0;
            Interpolator interpolator = this.e;
            Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
            if (interpolator != interpolator2) {
                this.e = interpolator2;
                this.d = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.d.fling(0, 0, i, i2, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE);
            b();
        }

        /* access modifiers changed from: package-private */
        public void b() {
            if (this.f) {
                this.g = true;
                return;
            }
            RecyclerView.this.removeCallbacks(this);
            RecyclerView recyclerView = RecyclerView.this;
            int i = c3.g;
            recyclerView.postOnAnimation(this);
        }

        public void c(int i, int i2, int i3, Interpolator interpolator) {
            int i4;
            if (i3 == Integer.MIN_VALUE) {
                int abs = Math.abs(i);
                int abs2 = Math.abs(i2);
                boolean z = abs > abs2;
                int sqrt = (int) Math.sqrt((double) 0);
                int sqrt2 = (int) Math.sqrt((double) ((i2 * i2) + (i * i)));
                RecyclerView recyclerView = RecyclerView.this;
                int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
                int i5 = width / 2;
                float f2 = (float) width;
                float f3 = (float) i5;
                float sin = (((float) Math.sin((double) ((Math.min(1.0f, (((float) sqrt2) * 1.0f) / f2) - 0.5f) * 0.47123894f))) * f3) + f3;
                if (sqrt > 0) {
                    i4 = Math.round(Math.abs(sin / ((float) sqrt)) * 1000.0f) * 4;
                } else {
                    if (!z) {
                        abs = abs2;
                    }
                    i4 = (int) (((((float) abs) / f2) + 1.0f) * 300.0f);
                }
                i3 = Math.min(i4, 2000);
            }
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            if (this.e != interpolator) {
                this.e = interpolator;
                this.d = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.c = 0;
            this.b = 0;
            RecyclerView.this.setScrollState(2);
            this.d.startScroll(0, 0, i, i2, i3);
            if (Build.VERSION.SDK_INT < 23) {
                this.d.computeScrollOffset();
            }
            b();
        }

        public void d() {
            RecyclerView.this.removeCallbacks(this);
            this.d.abortAnimation();
        }

        public void run() {
            int i;
            int i2;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout == null) {
                d();
                return;
            }
            this.g = false;
            this.f = true;
            recyclerView.consumePendingUpdateOperations();
            OverScroller overScroller = this.d;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i3 = currX - this.b;
                int i4 = currY - this.c;
                this.b = currX;
                this.c = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.mReusableIntPair;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.dispatchNestedPreScroll(i3, i4, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.mReusableIntPair;
                    i3 -= iArr2[0];
                    i4 -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.considerReleasingGlowsOnScroll(i3, i4);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.mAdapter != null) {
                    int[] iArr3 = recyclerView3.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.scrollStep(i3, i4, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.mReusableIntPair;
                    i = iArr4[0];
                    i2 = iArr4[1];
                    i3 -= i;
                    i4 -= i2;
                    x xVar = recyclerView4.mLayout.g;
                    if (xVar != null && !xVar.e() && xVar.f()) {
                        int b2 = RecyclerView.this.mState.b();
                        if (b2 == 0) {
                            xVar.l();
                        } else if (xVar.d() >= b2) {
                            xVar.j(b2 - 1);
                            xVar.g(i, i2);
                        } else {
                            xVar.g(i, i2);
                        }
                    }
                } else {
                    i2 = 0;
                    i = 0;
                }
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.mReusableIntPair;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.dispatchNestedScroll(i, i2, i3, i4, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.mReusableIntPair;
                int i5 = i3 - iArr6[0];
                int i6 = i4 - iArr6[1];
                if (!(i == 0 && i2 == 0)) {
                    recyclerView6.dispatchOnScrolled(i, i2);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i5 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i6 != 0));
                x xVar2 = RecyclerView.this.mLayout.g;
                if ((xVar2 != null && xVar2.e()) || !z) {
                    b();
                    RecyclerView recyclerView7 = RecyclerView.this;
                    m mVar = recyclerView7.mGapWorker;
                    if (mVar != null) {
                        mVar.a(recyclerView7, i, i2);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i7 = i5 < 0 ? -currVelocity : i5 > 0 ? currVelocity : 0;
                        if (i6 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i6 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.absorbGlows(i7, currVelocity);
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        m.b bVar = RecyclerView.this.mPrefetchRegistry;
                        int[] iArr7 = bVar.c;
                        if (iArr7 != null) {
                            Arrays.fill(iArr7, -1);
                        }
                        bVar.d = 0;
                    }
                }
            }
            x xVar3 = RecyclerView.this.mLayout.g;
            if (xVar3 != null && xVar3.e()) {
                xVar3.g(0, 0);
            }
            this.f = false;
            if (this.g) {
                RecyclerView.this.removeCallbacks(this);
                RecyclerView recyclerView8 = RecyclerView.this;
                int i8 = c3.g;
                recyclerView8.postOnAnimation(this);
                return;
            }
            RecyclerView.this.setScrollState(0);
            RecyclerView.this.stopNestedScroll(1);
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            l lVar = RecyclerView.this.mItemAnimator;
            if (lVar != null) {
                lVar.n();
            }
            RecyclerView.this.mPostedAnimatorRunner = false;
        }
    }

    public static abstract class b0 {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        int mFlags;
        boolean mInChangeScrap = false;
        private int mIsRecyclableCount = 0;
        long mItemId = -1;
        int mItemViewType = -1;
        WeakReference<RecyclerView> mNestedRecyclerView;
        int mOldPosition = -1;
        RecyclerView mOwnerRecyclerView;
        List<Object> mPayloads = null;
        int mPendingAccessibilityState = -1;
        int mPosition = -1;
        int mPreLayoutPosition = -1;
        u mScrapContainer = null;
        b0 mShadowedHolder = null;
        b0 mShadowingHolder = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mWasImportantForAccessibilityBeforeHidden = 0;

        public b0(View view) {
            if (view != null) {
                this.itemView = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
        }

        /* access modifiers changed from: package-private */
        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(FLAG_ADAPTER_FULLUPDATE);
            } else if ((FLAG_ADAPTER_FULLUPDATE & this.mFlags) == 0) {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        /* access modifiers changed from: package-private */
        public void addFlags(int i) {
            this.mFlags = i | this.mFlags;
        }

        /* access modifiers changed from: package-private */
        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        /* access modifiers changed from: package-private */
        public void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        /* access modifiers changed from: package-private */
        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        /* access modifiers changed from: package-private */
        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        /* access modifiers changed from: package-private */
        public boolean doesTransientStatePreventRecycling() {
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                int i = c3.g;
                if (view.hasTransientState()) {
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public void flagRemovedAndOffsetPosition(int i, int i2, boolean z) {
            addFlags(8);
            offsetPosition(i2, z);
            this.mPosition = i;
        }

        public final int getAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionFor(this);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i = this.mPreLayoutPosition;
            return i == -1 ? this.mPosition : i;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i = this.mPreLayoutPosition;
            return i == -1 ? this.mPosition : i;
        }

        /* access modifiers changed from: package-private */
        public List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & FLAG_ADAPTER_FULLUPDATE) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            if (list == null || list.size() == 0) {
                return FULLUPDATE_PAYLOADS;
            }
            return this.mUnmodifiedPayloads;
        }

        /* access modifiers changed from: package-private */
        public boolean hasAnyOfTheFlags(int i) {
            return (i & this.mFlags) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        /* access modifiers changed from: package-private */
        public boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        /* access modifiers changed from: package-private */
        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                int i = c3.g;
                if (!view.hasTransientState()) {
                    return true;
                }
            }
            return false;
        }

        /* access modifiers changed from: package-private */
        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        /* access modifiers changed from: package-private */
        public boolean isTmpDetached() {
            return (this.mFlags & FLAG_TMP_DETACHED) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        /* access modifiers changed from: package-private */
        public void offsetPosition(int i, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i;
            }
            this.mPosition += i;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).c = true;
            }
        }

        /* access modifiers changed from: package-private */
        public void onEnteredHiddenState(RecyclerView recyclerView) {
            int i = this.mPendingAccessibilityState;
            if (i != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i;
            } else {
                View view = this.itemView;
                int i2 = c3.g;
                this.mWasImportantForAccessibilityBeforeHidden = view.getImportantForAccessibility();
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        /* access modifiers changed from: package-private */
        public void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        /* access modifiers changed from: package-private */
        public void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        /* access modifiers changed from: package-private */
        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        /* access modifiers changed from: package-private */
        public void setFlags(int i, int i2) {
            this.mFlags = (i & i2) | (this.mFlags & (i2 ^ -1));
        }

        public final void setIsRecyclable(boolean z) {
            int i = this.mIsRecyclableCount;
            int i2 = z ? i - 1 : i + 1;
            this.mIsRecyclableCount = i2;
            if (i2 < 0) {
                this.mIsRecyclableCount = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            } else if (!z && i2 == 1) {
                this.mFlags |= 16;
            } else if (z && i2 == 0) {
                this.mFlags &= -17;
            }
        }

        /* access modifiers changed from: package-private */
        public void setScrapContainer(u uVar, boolean z) {
            this.mScrapContainer = uVar;
            this.mInChangeScrap = z;
        }

        /* access modifiers changed from: package-private */
        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        /* access modifiers changed from: package-private */
        public boolean shouldIgnore() {
            return (this.mFlags & FLAG_IGNORE) != 0;
        }

        /* access modifiers changed from: package-private */
        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder r = ic.r(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
            r.append(Integer.toHexString(hashCode()));
            r.append(" position=");
            r.append(this.mPosition);
            r.append(" id=");
            r.append(this.mItemId);
            r.append(", oldPos=");
            r.append(this.mOldPosition);
            r.append(", pLpos:");
            r.append(this.mPreLayoutPosition);
            StringBuilder sb = new StringBuilder(r.toString());
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                StringBuilder q = ic.q(" not recyclable(");
                q.append(this.mIsRecyclableCount);
                q.append(")");
                sb.append(q.toString());
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        /* access modifiers changed from: package-private */
        public void unScrap() {
            this.mScrapContainer.n(this);
        }

        /* access modifiers changed from: package-private */
        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    static class c implements Interpolator {
        c() {
        }

        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* access modifiers changed from: package-private */
    public class d implements d0.b {
        d() {
        }
    }

    /* access modifiers changed from: package-private */
    public class e implements d.b {
        e() {
        }

        public View a(int i) {
            return RecyclerView.this.getChildAt(i);
        }

        public int b() {
            return RecyclerView.this.getChildCount();
        }

        public void c(int i) {
            View childAt = RecyclerView.this.getChildAt(i);
            if (childAt != null) {
                RecyclerView.this.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i);
        }
    }

    /* access modifiers changed from: package-private */
    public class f implements a.AbstractC0017a {
        f() {
        }

        /* access modifiers changed from: package-private */
        public void a(a.b bVar) {
            int i = bVar.a;
            if (i == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mLayout.B0(recyclerView, bVar.b, bVar.d);
            } else if (i == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.mLayout.E0(recyclerView2, bVar.b, bVar.d);
            } else if (i == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.mLayout.G0(recyclerView3, bVar.b, bVar.d, bVar.c);
            } else if (i == 8) {
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.mLayout.D0(recyclerView4, bVar.b, bVar.d, 1);
            }
        }

        public b0 b(int i) {
            b0 findViewHolderForPosition = RecyclerView.this.findViewHolderForPosition(i, true);
            if (findViewHolderForPosition != null && !RecyclerView.this.mChildHelper.l(findViewHolderForPosition.itemView)) {
                return findViewHolderForPosition;
            }
            return null;
        }

        public void c(int i, int i2, Object obj) {
            RecyclerView.this.viewRangeUpdate(i, i2, obj);
            RecyclerView.this.mItemsChanged = true;
        }
    }

    public static abstract class g<VH extends b0> {
        private final h a = new h();
        private boolean b = false;

        public final void a(VH vh, int i) {
            vh.mPosition = i;
            if (this.b) {
                vh.mItemId = c(i);
            }
            vh.setFlags(1, 519);
            int i2 = b2.a;
            Trace.beginSection(RecyclerView.TRACE_BIND_VIEW_TAG);
            r(vh, i, vh.getUnmodifiedPayloads());
            vh.clearPayload();
            ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                ((LayoutParams) layoutParams).c = true;
            }
            Trace.endSection();
        }

        public abstract int b();

        public long c(int i) {
            return -1;
        }

        public int d(int i) {
            return 0;
        }

        public final boolean e() {
            return this.b;
        }

        public final void f() {
            this.a.b();
        }

        public final void g(int i) {
            this.a.d(i, 1, null);
        }

        public final void h(int i, Object obj) {
            this.a.d(i, 1, obj);
        }

        public final void i(int i) {
            this.a.e(i, 1);
        }

        public final void j(int i, int i2) {
            this.a.c(i, i2);
        }

        public final void k(int i, int i2) {
            this.a.d(i, i2, null);
        }

        public final void l(int i, int i2, Object obj) {
            this.a.d(i, i2, obj);
        }

        public final void m(int i, int i2) {
            this.a.e(i, i2);
        }

        public final void n(int i, int i2) {
            this.a.f(i, i2);
        }

        public final void o(int i) {
            this.a.f(i, 1);
        }

        public void p(RecyclerView recyclerView) {
        }

        public abstract void q(VH vh, int i);

        public void r(VH vh, int i, List<Object> list) {
            q(vh, i);
        }

        public abstract VH s(ViewGroup viewGroup, int i);

        public void t(RecyclerView recyclerView) {
        }

        public void u(VH vh) {
        }

        public void v(VH vh) {
        }

        public void w(i iVar) {
            this.a.registerObserver(iVar);
        }

        public void x(boolean z) {
            if (!this.a.a()) {
                this.b = z;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void y(i iVar) {
            this.a.unregisterObserver(iVar);
        }
    }

    /* access modifiers changed from: package-private */
    public static class h extends Observable<i> {
        h() {
        }

        public boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).a();
            }
        }

        public void c(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).d(i, i2, 1);
            }
        }

        public void d(int i, int i2, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).b(i, i2, obj);
            }
        }

        public void e(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).c(i, i2);
            }
        }

        public void f(int i, int i2) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((i) ((Observable) this).mObservers.get(size)).e(i, i2);
            }
        }
    }

    public static abstract class i {
        public void a() {
        }

        public void b(int i, int i2, Object obj) {
        }

        public void c(int i, int i2) {
        }

        public void d(int i, int i2, int i3) {
        }

        public void e(int i, int i2) {
        }
    }

    public interface j {
    }

    public static class k {
        /* access modifiers changed from: protected */
        public EdgeEffect a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class l {
        private b a = null;
        private ArrayList<a> b = new ArrayList<>();
        private long c = 120;
        private long d = 120;
        private long e = 250;
        private long f = 250;

        public interface a {
            void a();
        }

        /* access modifiers changed from: package-private */
        public interface b {
        }

        public static class c {
            public int a;
            public int b;
        }

        static int b(b0 b0Var) {
            int i = b0Var.mFlags & 14;
            if (b0Var.isInvalid()) {
                return 4;
            }
            if ((i & 4) != 0) {
                return i;
            }
            int oldPosition = b0Var.getOldPosition();
            int adapterPosition = b0Var.getAdapterPosition();
            return (oldPosition == -1 || adapterPosition == -1 || oldPosition == adapterPosition) ? i : i | 2048;
        }

        public abstract boolean a(b0 b0Var, b0 b0Var2, c cVar, c cVar2);

        public boolean c(b0 b0Var, List<Object> list) {
            return !((a0) this).g || b0Var.isInvalid();
        }

        public final void d(b0 b0Var) {
            b bVar = this.a;
            if (bVar != null) {
                m mVar = (m) bVar;
                Objects.requireNonNull(mVar);
                b0Var.setIsRecyclable(true);
                if (b0Var.mShadowedHolder != null && b0Var.mShadowingHolder == null) {
                    b0Var.mShadowedHolder = null;
                }
                b0Var.mShadowingHolder = null;
                if (!b0Var.shouldBeKeptAsChild() && !RecyclerView.this.removeAnimatingView(b0Var.itemView) && b0Var.isTmpDetached()) {
                    RecyclerView.this.removeDetachedView(b0Var.itemView, false);
                }
            }
        }

        public final void e() {
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                this.b.get(i).a();
            }
            this.b.clear();
        }

        public abstract void f(b0 b0Var);

        public abstract void g();

        public long h() {
            return this.c;
        }

        public long i() {
            return this.f;
        }

        public long j() {
            return this.e;
        }

        public long k() {
            return this.d;
        }

        public abstract boolean l();

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List<Ljava/lang/Object;>;)Landroidx/recyclerview/widget/RecyclerView$l$c; */
        public c m(b0 b0Var) {
            c cVar = new c();
            View view = b0Var.itemView;
            cVar.a = view.getLeft();
            cVar.b = view.getTop();
            view.getRight();
            view.getBottom();
            return cVar;
        }

        public abstract void n();

        /* access modifiers changed from: package-private */
        public void o(b bVar) {
            this.a = bVar;
        }
    }

    /* access modifiers changed from: private */
    public class m implements l.b {
        m() {
        }
    }

    public static abstract class n {
        public void f(Rect rect, View view, RecyclerView recyclerView, y yVar) {
            ((LayoutParams) view.getLayoutParams()).a();
            rect.set(0, 0, 0, 0);
        }

        public void g(Canvas canvas, RecyclerView recyclerView, y yVar) {
        }

        public void h(Canvas canvas, RecyclerView recyclerView, y yVar) {
        }
    }

    public static abstract class o {
        d a;
        RecyclerView b;
        private final c0.b c;
        private final c0.b d;
        c0 e;
        c0 f;
        x g;
        boolean h = false;
        boolean i = false;
        private boolean j = true;
        private boolean k = true;
        int l;
        boolean m;
        private int n;
        private int o;
        private int p;
        private int q;

        class a implements c0.b {
            a() {
            }

            @Override // androidx.recyclerview.widget.c0.b
            public int a(View view) {
                return o.this.G(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.c0.b
            public int b() {
                return o.this.U();
            }

            @Override // androidx.recyclerview.widget.c0.b
            public int c() {
                return o.this.e0() - o.this.V();
            }

            @Override // androidx.recyclerview.widget.c0.b
            public View d(int i) {
                d dVar = o.this.a;
                if (dVar != null) {
                    return dVar.d(i);
                }
                return null;
            }

            @Override // androidx.recyclerview.widget.c0.b
            public int e(View view) {
                return o.this.J(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
            }
        }

        class b implements c0.b {
            b() {
            }

            @Override // androidx.recyclerview.widget.c0.b
            public int a(View view) {
                return o.this.K(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.c0.b
            public int b() {
                return o.this.W();
            }

            @Override // androidx.recyclerview.widget.c0.b
            public int c() {
                return o.this.M() - o.this.T();
            }

            @Override // androidx.recyclerview.widget.c0.b
            public View d(int i) {
                d dVar = o.this.a;
                if (dVar != null) {
                    return dVar.d(i);
                }
                return null;
            }

            @Override // androidx.recyclerview.widget.c0.b
            public int e(View view) {
                return o.this.F(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
            }
        }

        public interface c {
        }

        public static class d {
            public int a;
            public int b;
            public boolean c;
            public boolean d;
        }

        public o() {
            a aVar = new a();
            this.c = aVar;
            b bVar = new b();
            this.d = bVar;
            this.e = new c0(aVar);
            this.f = new c0(bVar);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x0017, code lost:
            if (r5 == 1073741824) goto L_0x0021;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static int D(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                int r4 = r4 - r6
                r6 = 0
                int r4 = java.lang.Math.max(r6, r4)
                r0 = -2
                r1 = -1
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = 1073741824(0x40000000, float:2.0)
                if (r8 == 0) goto L_0x001a
                if (r7 < 0) goto L_0x0011
                goto L_0x001c
            L_0x0011:
                if (r7 != r1) goto L_0x002f
                if (r5 == r2) goto L_0x0021
                if (r5 == 0) goto L_0x002f
                if (r5 == r3) goto L_0x0021
                goto L_0x002f
            L_0x001a:
                if (r7 < 0) goto L_0x001f
            L_0x001c:
                r5 = 1073741824(0x40000000, float:2.0)
                goto L_0x0031
            L_0x001f:
                if (r7 != r1) goto L_0x0023
            L_0x0021:
                r7 = r4
                goto L_0x0031
            L_0x0023:
                if (r7 != r0) goto L_0x002f
                if (r5 == r2) goto L_0x002c
                if (r5 != r3) goto L_0x002a
                goto L_0x002c
            L_0x002a:
                r5 = 0
                goto L_0x0021
            L_0x002c:
                r5 = -2147483648(0xffffffff80000000, float:-0.0)
                goto L_0x0021
            L_0x002f:
                r5 = 0
                r7 = 0
            L_0x0031:
                int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.o.D(int, int, int, int, boolean):int");
        }

        public static d Y(Context context, AttributeSet attributeSet, int i2, int i3) {
            d dVar = new d();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.a, i2, i3);
            dVar.a = obtainStyledAttributes.getInt(0, 1);
            dVar.b = obtainStyledAttributes.getInt(10, 1);
            dVar.c = obtainStyledAttributes.getBoolean(9, false);
            dVar.d = obtainStyledAttributes.getBoolean(11, false);
            obtainStyledAttributes.recycle();
            return dVar;
        }

        private void f(View view, int i2, boolean z) {
            b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                this.b.mViewInfoStore.a(childViewHolderInt);
            } else {
                this.b.mViewInfoStore.h(childViewHolderInt);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.a.b(view, i2, view.getLayoutParams(), false);
            } else if (view.getParent() == this.b) {
                int k2 = this.a.k(view);
                if (i2 == -1) {
                    i2 = this.a.e();
                }
                if (k2 == -1) {
                    StringBuilder q2 = ic.q("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    q2.append(this.b.indexOfChild(view));
                    q2.append(this.b.exceptionLabel());
                    throw new IllegalStateException(q2.toString());
                } else if (k2 != i2) {
                    o oVar = this.b.mLayout;
                    d dVar = oVar.a;
                    View d2 = dVar != null ? dVar.d(k2) : null;
                    if (d2 != null) {
                        d dVar2 = oVar.a;
                        if (dVar2 != null) {
                            dVar2.d(k2);
                        }
                        oVar.a.c(k2);
                        LayoutParams layoutParams2 = (LayoutParams) d2.getLayoutParams();
                        b0 childViewHolderInt2 = RecyclerView.getChildViewHolderInt(d2);
                        if (childViewHolderInt2.isRemoved()) {
                            oVar.b.mViewInfoStore.a(childViewHolderInt2);
                        } else {
                            oVar.b.mViewInfoStore.h(childViewHolderInt2);
                        }
                        oVar.a.b(d2, i2, layoutParams2, childViewHolderInt2.isRemoved());
                    } else {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + k2 + oVar.b.toString());
                    }
                }
            } else {
                this.a.a(view, i2, false);
                layoutParams.c = true;
                x xVar = this.g;
                if (xVar != null && xVar.f()) {
                    this.g.h(view);
                }
            }
            if (layoutParams.d) {
                childViewHolderInt.itemView.invalidate();
                layoutParams.d = false;
            }
        }

        private static boolean j0(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i3);
            int size = View.MeasureSpec.getSize(i3);
            if (i4 > 0 && i2 != i4) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i2;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i2;
            }
            return true;
        }

        public static int l(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i3, i4) : size;
            }
            return Math.min(size, Math.max(i3, i4));
        }

        public int A(View view) {
            return ((LayoutParams) view.getLayoutParams()).b.bottom;
        }

        public View A0() {
            return null;
        }

        public View B(int i2) {
            d dVar = this.a;
            if (dVar != null) {
                return dVar.d(i2);
            }
            return null;
        }

        public void B0(RecyclerView recyclerView, int i2, int i3) {
        }

        public int C() {
            d dVar = this.a;
            if (dVar != null) {
                return dVar.e();
            }
            return 0;
        }

        public void C0(RecyclerView recyclerView) {
        }

        public void D0(RecyclerView recyclerView, int i2, int i3, int i4) {
        }

        public int E(u uVar, y yVar) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || recyclerView.mAdapter == null || !i()) {
                return 1;
            }
            return this.b.mAdapter.b();
        }

        public void E0(RecyclerView recyclerView, int i2, int i3) {
        }

        public int F(View view) {
            return view.getBottom() + ((LayoutParams) view.getLayoutParams()).b.bottom;
        }

        public void F0() {
        }

        public int G(View view) {
            return view.getLeft() - ((LayoutParams) view.getLayoutParams()).b.left;
        }

        public void G0(RecyclerView recyclerView, int i2, int i3, Object obj) {
            F0();
        }

        public int H(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public void H0(u uVar, y yVar) {
            Log.e(RecyclerView.TAG, "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public int I(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public void I0(y yVar) {
        }

        public int J(View view) {
            return view.getRight() + ((LayoutParams) view.getLayoutParams()).b.right;
        }

        public void J0(int i2, int i3) {
            this.b.defaultOnMeasure(i2, i3);
        }

        public int K(View view) {
            return view.getTop() - ((LayoutParams) view.getLayoutParams()).b.top;
        }

        @Deprecated
        public boolean K0(RecyclerView recyclerView) {
            x xVar = this.g;
            if ((xVar != null && xVar.f()) || recyclerView.isComputingLayout()) {
                return true;
            }
            return false;
        }

        public View L() {
            View focusedChild;
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.a.c.contains(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public boolean L0(RecyclerView recyclerView, View view, View view2) {
            return K0(recyclerView);
        }

        public int M() {
            return this.q;
        }

        public void M0(Parcelable parcelable) {
        }

        public int N() {
            return this.o;
        }

        public Parcelable N0() {
            return null;
        }

        public int O() {
            RecyclerView recyclerView = this.b;
            g adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.b();
            }
            return 0;
        }

        public void O0(int i2) {
        }

        public int P() {
            RecyclerView recyclerView = this.b;
            int i2 = c3.g;
            return recyclerView.getLayoutDirection();
        }

        /* JADX WARNING: Removed duplicated region for block: B:25:0x006d A[ADDED_TO_REGION] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean P0(androidx.recyclerview.widget.RecyclerView.u r8, androidx.recyclerview.widget.RecyclerView.y r9, int r10, android.os.Bundle r11) {
            /*
            // Method dump skipped, instructions count: 122
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.o.P0(androidx.recyclerview.widget.RecyclerView$u, androidx.recyclerview.widget.RecyclerView$y, int, android.os.Bundle):boolean");
        }

        public int Q(View view) {
            return ((LayoutParams) view.getLayoutParams()).b.left;
        }

        public boolean Q0() {
            return false;
        }

        public int R() {
            RecyclerView recyclerView = this.b;
            int i2 = c3.g;
            return recyclerView.getMinimumHeight();
        }

        public void R0(u uVar) {
            for (int C = C() - 1; C >= 0; C--) {
                if (!RecyclerView.getChildViewHolderInt(B(C)).shouldIgnore()) {
                    U0(C, uVar);
                }
            }
        }

        public int S() {
            RecyclerView recyclerView = this.b;
            int i2 = c3.g;
            return recyclerView.getMinimumWidth();
        }

        /* access modifiers changed from: package-private */
        public void S0(u uVar) {
            int size = uVar.a.size();
            for (int i2 = size - 1; i2 >= 0; i2--) {
                View view = uVar.a.get(i2).itemView;
                b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.b.removeDetachedView(view, false);
                    }
                    l lVar = this.b.mItemAnimator;
                    if (lVar != null) {
                        lVar.f(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    b0 childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                    childViewHolderInt2.mScrapContainer = null;
                    childViewHolderInt2.mInChangeScrap = false;
                    childViewHolderInt2.clearReturnedFromScrapFlag();
                    uVar.j(childViewHolderInt2);
                }
            }
            uVar.a.clear();
            ArrayList<b0> arrayList = uVar.b;
            if (arrayList != null) {
                arrayList.clear();
            }
            if (size > 0) {
                this.b.invalidate();
            }
        }

        public int T() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public void T0(View view, u uVar) {
            this.a.m(view);
            uVar.i(view);
        }

        public int U() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public void U0(int i2, u uVar) {
            d dVar = this.a;
            View view = null;
            View d2 = dVar != null ? dVar.d(i2) : null;
            d dVar2 = this.a;
            if (dVar2 != null) {
                view = dVar2.d(i2);
            }
            if (view != null) {
                this.a.n(i2);
            }
            uVar.i(d2);
        }

        public int V() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:23:0x00b3, code lost:
            if (r14 == false) goto L_0x00ba;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean V0(androidx.recyclerview.widget.RecyclerView r10, android.view.View r11, android.graphics.Rect r12, boolean r13, boolean r14) {
            /*
            // Method dump skipped, instructions count: 197
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.o.V0(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
        }

        public int W() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public void W0() {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int X(View view) {
            return ((LayoutParams) view.getLayoutParams()).a();
        }

        public int X0(int i2, u uVar, y yVar) {
            return 0;
        }

        public void Y0(int i2) {
        }

        public int Z(View view) {
            return ((LayoutParams) view.getLayoutParams()).b.right;
        }

        public int Z0(int i2, u uVar, y yVar) {
            return 0;
        }

        public int a0(u uVar, y yVar) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || recyclerView.mAdapter == null || !j()) {
                return 1;
            }
            return this.b.mAdapter.b();
        }

        /* access modifiers changed from: package-private */
        public void a1(RecyclerView recyclerView) {
            b1(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public void b(View view) {
            f(view, -1, true);
        }

        public int b0() {
            return 0;
        }

        /* access modifiers changed from: package-private */
        public void b1(int i2, int i3) {
            this.p = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            this.n = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.p = 0;
            }
            this.q = View.MeasureSpec.getSize(i3);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.o = mode2;
            if (mode2 == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.q = 0;
            }
        }

        public void c(View view, int i2) {
            f(view, i2, true);
        }

        public int c0(View view) {
            return ((LayoutParams) view.getLayoutParams()).b.top;
        }

        public void c1(Rect rect, int i2, int i3) {
            int V = V() + U() + rect.width();
            int T = T() + W() + rect.height();
            this.b.setMeasuredDimension(l(i2, V, S()), l(i3, T, R()));
        }

        public void d(View view) {
            f(view, -1, false);
        }

        public void d0(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (!(this.b == null || (matrix = view.getMatrix()) == null || matrix.isIdentity())) {
                RectF rectF = this.b.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor((double) rectF.left), (int) Math.floor((double) rectF.top), (int) Math.ceil((double) rectF.right), (int) Math.ceil((double) rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        /* access modifiers changed from: package-private */
        public void d1(int i2, int i3) {
            int C = C();
            if (C == 0) {
                this.b.defaultOnMeasure(i2, i3);
                return;
            }
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = RecyclerView.UNDEFINED_DURATION;
            int i7 = RecyclerView.UNDEFINED_DURATION;
            for (int i8 = 0; i8 < C; i8++) {
                View B = B(i8);
                Rect rect = this.b.mTempRect;
                RecyclerView.getDecoratedBoundsWithMarginsInt(B, rect);
                int i9 = rect.left;
                if (i9 < i4) {
                    i4 = i9;
                }
                int i10 = rect.right;
                if (i10 > i6) {
                    i6 = i10;
                }
                int i11 = rect.top;
                if (i11 < i5) {
                    i5 = i11;
                }
                int i12 = rect.bottom;
                if (i12 > i7) {
                    i7 = i12;
                }
            }
            this.b.mTempRect.set(i4, i5, i6, i7);
            c1(this.b.mTempRect, i2, i3);
        }

        public void e(View view, int i2) {
            f(view, i2, false);
        }

        public int e0() {
            return this.p;
        }

        /* access modifiers changed from: package-private */
        public void e1(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.b = null;
                this.a = null;
                this.p = 0;
                this.q = 0;
            } else {
                this.b = recyclerView;
                this.a = recyclerView.mChildHelper;
                this.p = recyclerView.getWidth();
                this.q = recyclerView.getHeight();
            }
            this.n = 1073741824;
            this.o = 1073741824;
        }

        public int f0() {
            return this.n;
        }

        /* access modifiers changed from: package-private */
        public boolean f1(View view, int i2, int i3, LayoutParams layoutParams) {
            return view.isLayoutRequested() || !this.j || !j0(view.getWidth(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).width) || !j0(view.getHeight(), i3, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        }

        public void g(String str) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public boolean g0() {
            return false;
        }

        /* access modifiers changed from: package-private */
        public boolean g1() {
            return false;
        }

        public void h(View view, Rect rect) {
            RecyclerView recyclerView = this.b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public final boolean h0() {
            return this.k;
        }

        /* access modifiers changed from: package-private */
        public boolean h1(View view, int i2, int i3, LayoutParams layoutParams) {
            return !this.j || !j0(view.getMeasuredWidth(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).width) || !j0(view.getMeasuredHeight(), i3, ((ViewGroup.MarginLayoutParams) layoutParams).height);
        }

        public boolean i() {
            return false;
        }

        public boolean i0() {
            return false;
        }

        public void i1(RecyclerView recyclerView, y yVar, int i2) {
            Log.e(RecyclerView.TAG, "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public boolean j() {
            return false;
        }

        public void j1(x xVar) {
            x xVar2 = this.g;
            if (!(xVar2 == null || xVar == xVar2 || !xVar2.f())) {
                this.g.l();
            }
            this.g = xVar;
            xVar.k(this.b, this);
        }

        public boolean k(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public boolean k0(View view, boolean z) {
            boolean z2 = this.e.b(view, 24579) && this.f.b(view, 24579);
            return z ? z2 : !z2;
        }

        public boolean k1() {
            return false;
        }

        public void l0(View view, int i2, int i3, int i4, int i5) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.b;
            view.layout(i2 + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i3 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i4 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i5 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public void m(int i2, int i3, y yVar, c cVar) {
        }

        public void m0(View view, int i2, int i3) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.b.getItemDecorInsetsForChild(view);
            int i4 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i2;
            int i5 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + i3;
            int D = D(this.p, this.n, V() + U() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i4, ((ViewGroup.MarginLayoutParams) layoutParams).width, i());
            int D2 = D(this.q, this.o, T() + W() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i5, ((ViewGroup.MarginLayoutParams) layoutParams).height, j());
            if (f1(view, D, D2, layoutParams)) {
                view.measure(D, D2);
            }
        }

        public void n(int i2, c cVar) {
        }

        public void n0(int i2) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i2);
            }
        }

        public int o(y yVar) {
            return 0;
        }

        public void o0(int i2) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i2);
            }
        }

        public int p(y yVar) {
            return 0;
        }

        public void p0() {
        }

        public int q(y yVar) {
            return 0;
        }

        /* JADX WARN: Incorrect args count in method signature: (Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList<Landroid/view/View;>;II)Z */
        public boolean q0() {
            return false;
        }

        public int r(y yVar) {
            return 0;
        }

        public void r0() {
        }

        public int s(y yVar) {
            return 0;
        }

        @Deprecated
        public void s0() {
        }

        public int t(y yVar) {
            return 0;
        }

        public void t0(RecyclerView recyclerView, u uVar) {
            s0();
        }

        public void u(u uVar) {
            int C = C();
            while (true) {
                C--;
                if (C >= 0) {
                    View B = B(C);
                    b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(B);
                    if (!childViewHolderInt.shouldIgnore()) {
                        if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || this.b.mAdapter.e()) {
                            d dVar = this.a;
                            if (dVar != null) {
                                dVar.d(C);
                            }
                            this.a.c(C);
                            uVar.k(B);
                            this.b.mViewInfoStore.h(childViewHolderInt);
                        } else {
                            d dVar2 = this.a;
                            if ((dVar2 != null ? dVar2.d(C) : null) != null) {
                                this.a.n(C);
                            }
                            uVar.j(childViewHolderInt);
                        }
                    }
                } else {
                    return;
                }
            }
        }

        public View u0(View view, int i2, u uVar, y yVar) {
            return null;
        }

        public View v(View view) {
            View findContainingItemView;
            RecyclerView recyclerView = this.b;
            if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.a.c.contains(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        public void v0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.b;
            u uVar = recyclerView.mRecycler;
            y yVar = recyclerView.mState;
            w0(accessibilityEvent);
        }

        public View w(int i2) {
            int C = C();
            for (int i3 = 0; i3 < C; i3++) {
                View B = B(i3);
                b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(B);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i2 && !childViewHolderInt.shouldIgnore() && (this.b.mState.g || !childViewHolderInt.isRemoved())) {
                    return B;
                }
            }
            return null;
        }

        public void w0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.b;
            if (recyclerView != null && accessibilityEvent != null) {
                boolean z = true;
                if (!recyclerView.canScrollVertically(1) && !this.b.canScrollVertically(-1) && !this.b.canScrollHorizontally(-1) && !this.b.canScrollHorizontally(1)) {
                    z = false;
                }
                accessibilityEvent.setScrollable(z);
                g gVar = this.b.mAdapter;
                if (gVar != null) {
                    accessibilityEvent.setItemCount(gVar.b());
                }
            }
        }

        public abstract LayoutParams x();

        public void x0(u uVar, y yVar, n3 n3Var) {
            if (this.b.canScrollVertically(-1) || this.b.canScrollHorizontally(-1)) {
                n3Var.a(8192);
                n3Var.k0(true);
            }
            if (this.b.canScrollVertically(1) || this.b.canScrollHorizontally(1)) {
                n3Var.a(4096);
                n3Var.k0(true);
            }
            n3Var.T(n3.b.b(a0(uVar, yVar), E(uVar, yVar), i0(), b0()));
        }

        public LayoutParams y(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        /* access modifiers changed from: package-private */
        public void y0(View view, n3 n3Var) {
            b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && !this.a.l(childViewHolderInt.itemView)) {
                RecyclerView recyclerView = this.b;
                z0(recyclerView.mRecycler, recyclerView.mState, view, n3Var);
            }
        }

        public LayoutParams z(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new LayoutParams(layoutParams);
        }

        public void z0(u uVar, y yVar, View view, n3 n3Var) {
            n3Var.U(n3.c.a(j() ? X(view) : 0, 1, i() ? X(view) : 0, 1, false, false));
        }
    }

    public interface p {
        void b(View view);

        void d(View view);
    }

    public static abstract class q {
    }

    public interface r {
        void a(RecyclerView recyclerView, MotionEvent motionEvent);

        boolean c(RecyclerView recyclerView, MotionEvent motionEvent);

        void e(boolean z);
    }

    public static abstract class s {
        public void a(RecyclerView recyclerView, int i) {
        }

        public void b(RecyclerView recyclerView, int i, int i2) {
        }
    }

    public static class t {
        SparseArray<a> a = new SparseArray<>();
        private int b = 0;

        /* access modifiers changed from: package-private */
        public static class a {
            final ArrayList<b0> a = new ArrayList<>();
            int b = 5;
            long c = 0;
            long d = 0;

            a() {
            }
        }

        private a e(int i) {
            a aVar = this.a.get(i);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.a.put(i, aVar2);
            return aVar2;
        }

        /* access modifiers changed from: package-private */
        public void a() {
            this.b++;
        }

        /* access modifiers changed from: package-private */
        public void b() {
            this.b--;
        }

        /* access modifiers changed from: package-private */
        public void c(int i, long j) {
            a e = e(i);
            e.d = h(e.d, j);
        }

        /* access modifiers changed from: package-private */
        public void d(int i, long j) {
            a e = e(i);
            e.c = h(e.c, j);
        }

        /* access modifiers changed from: package-private */
        public void f(g gVar, g gVar2, boolean z) {
            if (gVar != null) {
                this.b--;
            }
            if (!z && this.b == 0) {
                for (int i = 0; i < this.a.size(); i++) {
                    this.a.valueAt(i).a.clear();
                }
            }
            if (gVar2 != null) {
                this.b++;
            }
        }

        public void g(b0 b0Var) {
            int itemViewType = b0Var.getItemViewType();
            ArrayList<b0> arrayList = e(itemViewType).a;
            if (this.a.get(itemViewType).b > arrayList.size()) {
                b0Var.resetInternal();
                arrayList.add(b0Var);
            }
        }

        /* access modifiers changed from: package-private */
        public long h(long j, long j2) {
            if (j == 0) {
                return j2;
            }
            return (j2 / 4) + ((j / 4) * 3);
        }

        /* access modifiers changed from: package-private */
        public boolean i(int i, long j, long j2) {
            long j3 = e(i).d;
            return j3 == 0 || j + j3 < j2;
        }

        /* access modifiers changed from: package-private */
        public boolean j(int i, long j, long j2) {
            long j3 = e(i).c;
            return j3 == 0 || j + j3 < j2;
        }
    }

    public final class u {
        final ArrayList<b0> a;
        ArrayList<b0> b = null;
        final ArrayList<b0> c = new ArrayList<>();
        private final List<b0> d;
        private int e;
        int f;
        t g;

        public u() {
            ArrayList<b0> arrayList = new ArrayList<>();
            this.a = arrayList;
            this.d = Collections.unmodifiableList(arrayList);
            this.e = 2;
            this.f = 2;
        }

        private void f(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    f((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                    return;
                }
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }

        /* access modifiers changed from: package-private */
        public void a(b0 b0Var, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(b0Var);
            View view = b0Var.itemView;
            y yVar = RecyclerView.this.mAccessibilityDelegate;
            if (yVar != null) {
                n2 k = yVar.k();
                c3.u(view, k instanceof y.a ? ((y.a) k).k(view) : null);
            }
            if (z) {
                v vVar = RecyclerView.this.mRecyclerListener;
                if (vVar != null) {
                    vVar.a(b0Var);
                }
                g gVar = RecyclerView.this.mAdapter;
                if (gVar != null) {
                    gVar.v(b0Var);
                }
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mState != null) {
                    recyclerView.mViewInfoStore.i(b0Var);
                }
            }
            b0Var.mOwnerRecyclerView = null;
            d().g(b0Var);
        }

        public void b() {
            this.a.clear();
            g();
        }

        public int c(int i) {
            if (i < 0 || i >= RecyclerView.this.mState.b()) {
                throw new IndexOutOfBoundsException("invalid position " + i + ". State item count is " + RecyclerView.this.mState.b() + RecyclerView.this.exceptionLabel());
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.mState.g) {
                return i;
            }
            return recyclerView.mAdapterHelper.f(i, 0);
        }

        /* access modifiers changed from: package-private */
        public t d() {
            if (this.g == null) {
                this.g = new t();
            }
            return this.g;
        }

        public List<b0> e() {
            return this.d;
        }

        /* access modifiers changed from: package-private */
        public void g() {
            for (int size = this.c.size() - 1; size >= 0; size--) {
                h(size);
            }
            this.c.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                m.b bVar = RecyclerView.this.mPrefetchRegistry;
                int[] iArr = bVar.c;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                bVar.d = 0;
            }
        }

        /* access modifiers changed from: package-private */
        public void h(int i) {
            a(this.c.get(i), true);
            this.c.remove(i);
        }

        public void i(View view) {
            b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            j(childViewHolderInt);
            if (RecyclerView.this.mItemAnimator != null && !childViewHolderInt.isRecyclable()) {
                RecyclerView.this.mItemAnimator.f(childViewHolderInt);
            }
        }

        /* access modifiers changed from: package-private */
        public void j(b0 b0Var) {
            boolean z = false;
            boolean z2 = true;
            if (b0Var.isScrap() || b0Var.itemView.getParent() != null) {
                StringBuilder q = ic.q("Scrapped or attached views may not be recycled. isScrap:");
                q.append(b0Var.isScrap());
                q.append(" isAttached:");
                if (b0Var.itemView.getParent() != null) {
                    z = true;
                }
                q.append(z);
                q.append(RecyclerView.this.exceptionLabel());
                throw new IllegalArgumentException(q.toString());
            } else if (b0Var.isTmpDetached()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + b0Var + RecyclerView.this.exceptionLabel());
            } else if (!b0Var.shouldIgnore()) {
                boolean doesTransientStatePreventRecycling = b0Var.doesTransientStatePreventRecycling();
                g gVar = RecyclerView.this.mAdapter;
                if (gVar != null && doesTransientStatePreventRecycling) {
                    Objects.requireNonNull(gVar);
                }
                if (b0Var.isRecyclable()) {
                    if (this.f <= 0 || b0Var.hasAnyOfTheFlags(526)) {
                        z = false;
                    } else {
                        int size = this.c.size();
                        if (size >= this.f && size > 0) {
                            h(0);
                            size--;
                        }
                        if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0 && !RecyclerView.this.mPrefetchRegistry.c(b0Var.mPosition)) {
                            do {
                                size--;
                                if (size < 0) {
                                    break;
                                }
                            } while (RecyclerView.this.mPrefetchRegistry.c(this.c.get(size).mPosition));
                            size++;
                        }
                        this.c.add(size, b0Var);
                        z = true;
                    }
                    if (!z) {
                        a(b0Var, true);
                        RecyclerView.this.mViewInfoStore.i(b0Var);
                        if (!z && !z2 && doesTransientStatePreventRecycling) {
                            b0Var.mOwnerRecyclerView = null;
                            return;
                        }
                        return;
                    }
                }
                z2 = false;
                RecyclerView.this.mViewInfoStore.i(b0Var);
                if (!z) {
                }
            } else {
                StringBuilder q2 = ic.q("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
                q2.append(RecyclerView.this.exceptionLabel());
                throw new IllegalArgumentException(q2.toString());
            }
        }

        /* access modifiers changed from: package-private */
        public void k(View view) {
            b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.hasAnyOfTheFlags(12) && childViewHolderInt.isUpdated() && !RecyclerView.this.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.b == null) {
                    this.b = new ArrayList<>();
                }
                childViewHolderInt.setScrapContainer(this, true);
                this.b.add(childViewHolderInt);
            } else if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || RecyclerView.this.mAdapter.e()) {
                childViewHolderInt.setScrapContainer(this, false);
                this.a.add(childViewHolderInt);
            } else {
                StringBuilder q = ic.q("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
                q.append(RecyclerView.this.exceptionLabel());
                throw new IllegalArgumentException(q.toString());
            }
        }

        public void l(int i) {
            this.e = i;
            o();
        }

        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:116:0x0223  */
        /* JADX WARNING: Removed duplicated region for block: B:157:0x02f2  */
        /* JADX WARNING: Removed duplicated region for block: B:176:0x033f  */
        /* JADX WARNING: Removed duplicated region for block: B:199:0x03dc  */
        /* JADX WARNING: Removed duplicated region for block: B:208:0x03fb  */
        /* JADX WARNING: Removed duplicated region for block: B:227:0x047d  */
        /* JADX WARNING: Removed duplicated region for block: B:237:0x04a6  */
        /* JADX WARNING: Removed duplicated region for block: B:240:0x04af  */
        /* JADX WARNING: Removed duplicated region for block: B:244:0x04ba  */
        /* JADX WARNING: Removed duplicated region for block: B:245:0x04c8  */
        /* JADX WARNING: Removed duplicated region for block: B:251:0x04e4 A[ADDED_TO_REGION] */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x008f  */
        /* JADX WARNING: Removed duplicated region for block: B:39:0x0096  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public androidx.recyclerview.widget.RecyclerView.b0 m(int r20, boolean r21, long r22) {
            /*
            // Method dump skipped, instructions count: 1318
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.u.m(int, boolean, long):androidx.recyclerview.widget.RecyclerView$b0");
        }

        /* access modifiers changed from: package-private */
        public void n(b0 b0Var) {
            if (b0Var.mInChangeScrap) {
                this.b.remove(b0Var);
            } else {
                this.a.remove(b0Var);
            }
            b0Var.mScrapContainer = null;
            b0Var.mInChangeScrap = false;
            b0Var.clearReturnedFromScrapFlag();
        }

        /* access modifiers changed from: package-private */
        public void o() {
            o oVar = RecyclerView.this.mLayout;
            this.f = this.e + (oVar != null ? oVar.l : 0);
            for (int size = this.c.size() - 1; size >= 0 && this.c.size() > this.f; size--) {
                h(size);
            }
        }
    }

    public interface v {
        void a(b0 b0Var);
    }

    /* access modifiers changed from: private */
    public class w extends i {
        w() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void a() {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.mState.f = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (!RecyclerView.this.mAdapterHelper.h()) {
                RecyclerView.this.requestLayout();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void b(int i, int i2, Object obj) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.j(i, i2, obj)) {
                f();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void c(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.k(i, i2)) {
                f();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void d(int i, int i2, int i3) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.l(i, i2, i3)) {
                f();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.i
        public void e(int i, int i2) {
            RecyclerView.this.assertNotInLayoutOrScroll(null);
            if (RecyclerView.this.mAdapterHelper.m(i, i2)) {
                f();
            }
        }

        /* access modifiers changed from: package-private */
        public void f() {
            if (RecyclerView.POST_UPDATES_ON_ANIMATION) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mHasFixedSize && recyclerView.mIsAttached) {
                    Runnable runnable = recyclerView.mUpdateChildViewsRunnable;
                    int i = c3.g;
                    recyclerView.postOnAnimation(runnable);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.mAdapterUpdateDuringMeasure = true;
            recyclerView2.requestLayout();
        }
    }

    public static abstract class x {
        private int a = -1;
        private RecyclerView b;
        private o c;
        private boolean d;
        private boolean e;
        private View f;
        private final a g = new a(0, 0);
        private boolean h;

        public static class a {
            private int a;
            private int b;
            private int c;
            private int d = -1;
            private Interpolator e;
            private boolean f = false;
            private int g = 0;

            public a(int i, int i2) {
                this.a = i;
                this.b = i2;
                this.c = RecyclerView.UNDEFINED_DURATION;
                this.e = null;
            }

            /* access modifiers changed from: package-private */
            public boolean a() {
                return this.d >= 0;
            }

            public void b(int i) {
                this.d = i;
            }

            /* access modifiers changed from: package-private */
            public void c(RecyclerView recyclerView) {
                int i = this.d;
                if (i >= 0) {
                    this.d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i);
                    this.f = false;
                } else if (this.f) {
                    Interpolator interpolator = this.e;
                    if (interpolator == null || this.c >= 1) {
                        int i2 = this.c;
                        if (i2 >= 1) {
                            recyclerView.mViewFlinger.c(this.a, this.b, i2, interpolator);
                            int i3 = this.g + 1;
                            this.g = i3;
                            if (i3 > 10) {
                                Log.e(RecyclerView.TAG, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                            }
                            this.f = false;
                            return;
                        }
                        throw new IllegalStateException("Scroll duration must be a positive number");
                    }
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                } else {
                    this.g = 0;
                }
            }

            public void d(int i, int i2, int i3, Interpolator interpolator) {
                this.a = i;
                this.b = i2;
                this.c = i3;
                this.e = interpolator;
                this.f = true;
            }
        }

        public interface b {
            PointF a(int i);
        }

        public PointF a(int i) {
            o oVar = this.c;
            if (oVar instanceof b) {
                return ((b) oVar).a(i);
            }
            StringBuilder q = ic.q("You should override computeScrollVectorForPosition when the LayoutManager does not implement ");
            q.append(b.class.getCanonicalName());
            Log.w(RecyclerView.TAG, q.toString());
            return null;
        }

        public int b() {
            return this.b.mLayout.C();
        }

        public o c() {
            return this.c;
        }

        public int d() {
            return this.a;
        }

        public boolean e() {
            return this.d;
        }

        public boolean f() {
            return this.e;
        }

        /* access modifiers changed from: package-private */
        public void g(int i, int i2) {
            PointF a2;
            RecyclerView recyclerView = this.b;
            if (this.a == -1 || recyclerView == null) {
                l();
            }
            if (this.d && this.f == null && this.c != null && (a2 = a(this.a)) != null) {
                float f2 = a2.x;
                if (!(f2 == 0.0f && a2.y == 0.0f)) {
                    recyclerView.scrollStep((int) Math.signum(f2), (int) Math.signum(a2.y), null);
                }
            }
            int i3 = 0;
            this.d = false;
            View view = this.f;
            if (view != null) {
                if (this.b.getChildLayoutPosition(view) == this.a) {
                    i(this.f, recyclerView.mState, this.g);
                    this.g.c(recyclerView);
                    l();
                } else {
                    Log.e(RecyclerView.TAG, "Passed over target position while smooth scrolling.");
                    this.f = null;
                }
            }
            if (this.e) {
                y yVar = recyclerView.mState;
                a aVar = this.g;
                q qVar = (q) this;
                if (qVar.b() == 0) {
                    qVar.l();
                } else {
                    int i4 = qVar.o;
                    int i5 = i4 - i;
                    if (i4 * i5 <= 0) {
                        i5 = 0;
                    }
                    qVar.o = i5;
                    int i6 = qVar.p;
                    int i7 = i6 - i2;
                    if (i6 * i7 > 0) {
                        i3 = i7;
                    }
                    qVar.p = i3;
                    if (i5 == 0 && i3 == 0) {
                        PointF a3 = qVar.a(qVar.a);
                        if (a3 != null) {
                            float f3 = a3.x;
                            if (!(f3 == 0.0f && a3.y == 0.0f)) {
                                float f4 = a3.y;
                                float sqrt = (float) Math.sqrt((double) ((f4 * f4) + (f3 * f3)));
                                float f5 = a3.x / sqrt;
                                a3.x = f5;
                                float f6 = a3.y / sqrt;
                                a3.y = f6;
                                qVar.k = a3;
                                qVar.o = (int) (f5 * 10000.0f);
                                qVar.p = (int) (f6 * 10000.0f);
                                aVar.d((int) (((float) qVar.o) * 1.2f), (int) (((float) qVar.p) * 1.2f), (int) (((float) qVar.p(10000)) * 1.2f), qVar.i);
                            }
                        }
                        aVar.b(qVar.a);
                        qVar.l();
                    }
                }
                boolean a4 = this.g.a();
                this.g.c(recyclerView);
                if (a4 && this.e) {
                    this.d = true;
                    recyclerView.mViewFlinger.b();
                }
            }
        }

        /* access modifiers changed from: protected */
        public void h(View view) {
            if (this.b.getChildLayoutPosition(view) == this.a) {
                this.f = view;
            }
        }

        /* access modifiers changed from: protected */
        public abstract void i(View view, y yVar, a aVar);

        public void j(int i) {
            this.a = i;
        }

        /* access modifiers changed from: package-private */
        public void k(RecyclerView recyclerView, o oVar) {
            recyclerView.mViewFlinger.d();
            if (this.h) {
                StringBuilder q = ic.q("An instance of ");
                q.append(getClass().getSimpleName());
                q.append(" was started more than once. Each instance of");
                q.append(getClass().getSimpleName());
                q.append(" is intended to only be used once. You should create a new instance for each use.");
                Log.w(RecyclerView.TAG, q.toString());
            }
            this.b = recyclerView;
            this.c = oVar;
            int i = this.a;
            if (i != -1) {
                recyclerView.mState.a = i;
                this.e = true;
                this.d = true;
                this.f = recyclerView.mLayout.w(i);
                this.b.mViewFlinger.b();
                this.h = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        /* access modifiers changed from: protected */
        public final void l() {
            if (this.e) {
                this.e = false;
                q qVar = (q) this;
                qVar.p = 0;
                qVar.o = 0;
                qVar.k = null;
                this.b.mState.a = -1;
                this.f = null;
                this.a = -1;
                this.d = false;
                o oVar = this.c;
                if (oVar.g == this) {
                    oVar.g = null;
                }
                this.c = null;
                this.b = null;
            }
        }
    }

    public static class y {
        int a = -1;
        int b = 0;
        int c = 0;
        int d = 1;
        int e = 0;
        boolean f = false;
        boolean g = false;
        boolean h = false;
        boolean i = false;
        boolean j = false;
        boolean k = false;
        int l;
        long m;
        int n;

        /* access modifiers changed from: package-private */
        public void a(int i2) {
            if ((this.d & i2) == 0) {
                StringBuilder q = ic.q("Layout state should be one of ");
                q.append(Integer.toBinaryString(i2));
                q.append(" but it is ");
                q.append(Integer.toBinaryString(this.d));
                throw new IllegalStateException(q.toString());
            }
        }

        public int b() {
            return this.g ? this.b - this.c : this.e;
        }

        public String toString() {
            StringBuilder q = ic.q("State{mTargetPosition=");
            q.append(this.a);
            q.append(", mData=");
            q.append((Object) null);
            q.append(", mItemCount=");
            q.append(this.e);
            q.append(", mIsMeasuring=");
            q.append(this.i);
            q.append(", mPreviousLayoutItemCount=");
            q.append(this.b);
            q.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
            q.append(this.c);
            q.append(", mStructureChanged=");
            q.append(this.f);
            q.append(", mInPreLayout=");
            q.append(this.g);
            q.append(", mRunSimpleAnimations=");
            q.append(this.j);
            q.append(", mRunPredictiveAnimations=");
            q.append(this.k);
            q.append('}');
            return q.toString();
        }
    }

    public static abstract class z {
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        FORCE_INVALIDATE_DISPLAY_LIST = i2 == 19 || i2 == 20;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = i2 >= 23;
        ALLOW_THREAD_GAP_WORK = i2 >= 21;
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
    }

    public RecyclerView(Context context) {
        this(context, null);
    }

    private void addAnimatingView(b0 b0Var) {
        View view = b0Var.itemView;
        boolean z2 = view.getParent() == this;
        this.mRecycler.n(getChildViewHolder(view));
        if (b0Var.isTmpDetached()) {
            this.mChildHelper.b(view, -1, view.getLayoutParams(), true);
        } else if (!z2) {
            this.mChildHelper.a(view, -1, true);
        } else {
            this.mChildHelper.i(view);
        }
    }

    private void animateChange(b0 b0Var, b0 b0Var2, l.c cVar, l.c cVar2, boolean z2, boolean z3) {
        b0Var.setIsRecyclable(false);
        if (z2) {
            addAnimatingView(b0Var);
        }
        if (b0Var != b0Var2) {
            if (z3) {
                addAnimatingView(b0Var2);
            }
            b0Var.mShadowedHolder = b0Var2;
            addAnimatingView(b0Var);
            this.mRecycler.n(b0Var);
            b0Var2.setIsRecyclable(false);
            b0Var2.mShadowingHolder = b0Var;
        }
        if (this.mItemAnimator.a(b0Var, b0Var2, cVar, cVar2)) {
            postAnimationRunner();
        }
    }

    private void cancelScroll() {
        resetScroll();
        setScrollState(0);
    }

    static void clearNestedRecyclerViewIfNotNested(b0 b0Var) {
        WeakReference<RecyclerView> weakReference = b0Var.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView != b0Var.itemView) {
                    ViewParent parent = recyclerView.getParent();
                    recyclerView = parent instanceof View ? (View) parent : null;
                } else {
                    return;
                }
            }
            b0Var.mNestedRecyclerView = null;
        }
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i2, int i3) {
        ClassLoader classLoader;
        Constructor<? extends U> constructor;
        if (str != null) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                String fullClassName = getFullClassName(context, trim);
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class<? extends U> asSubclass = Class.forName(fullClassName, false, classLoader).asSubclass(o.class);
                    Object[] objArr = null;
                    try {
                        constructor = asSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i3)};
                    } catch (NoSuchMethodException e2) {
                        try {
                            constructor = asSubclass.getConstructor(new Class[0]);
                        } catch (NoSuchMethodException e3) {
                            e3.initCause(e2);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e3);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((o) constructor.newInstance(objArr));
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e4);
                } catch (InvocationTargetException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e6);
                } catch (IllegalAccessException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e7);
                } catch (ClassCastException e8) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e8);
                }
            }
        }
    }

    private boolean didChildRangeChange(int i2, int i3) {
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        int[] iArr = this.mMinMaxLayoutPositions;
        return (iArr[0] == i2 && iArr[1] == i3) ? false : true;
    }

    private void dispatchContentChangedIfNecessary() {
        int i2 = this.mEatenAccessibilityChangeFlags;
        this.mEatenAccessibilityChangeFlags = 0;
        if (i2 != 0 && isAccessibilityEnabled()) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain();
            obtain.setEventType(2048);
            obtain.setContentChangeTypes(i2);
            sendAccessibilityEventUnchecked(obtain);
        }
    }

    private void dispatchLayoutStep1() {
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.i = false;
        startInterceptRequestLayout();
        d0 d0Var = this.mViewInfoStore;
        d0Var.a.clear();
        d0Var.b.b();
        onEnterLayoutOrScroll();
        processAdapterUpdatesAndSetAnimationFlags();
        saveFocusInfo();
        y yVar = this.mState;
        yVar.h = yVar.j && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        yVar.g = yVar.k;
        yVar.e = this.mAdapter.b();
        findMinMaxChildLayoutPositions(this.mMinMaxLayoutPositions);
        if (this.mState.j) {
            int e2 = this.mChildHelper.e();
            for (int i2 = 0; i2 < e2; i2++) {
                b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.e())) {
                    l lVar = this.mItemAnimator;
                    l.b(childViewHolderInt);
                    childViewHolderInt.getUnmodifiedPayloads();
                    this.mViewInfoStore.c(childViewHolderInt, lVar.m(childViewHolderInt));
                    if (this.mState.h && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.b.k(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.k) {
            saveOldPositions();
            y yVar2 = this.mState;
            boolean z2 = yVar2.f;
            yVar2.f = false;
            this.mLayout.H0(this.mRecycler, yVar2);
            this.mState.f = z2;
            for (int i3 = 0; i3 < this.mChildHelper.e(); i3++) {
                b0 childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.d(i3));
                if (!childViewHolderInt2.shouldIgnore()) {
                    d0.a orDefault = this.mViewInfoStore.a.getOrDefault(childViewHolderInt2, null);
                    if (!((orDefault == null || (orDefault.a & 4) == 0) ? false : true)) {
                        l.b(childViewHolderInt2);
                        boolean hasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                        l lVar2 = this.mItemAnimator;
                        childViewHolderInt2.getUnmodifiedPayloads();
                        l.c m2 = lVar2.m(childViewHolderInt2);
                        if (hasAnyOfTheFlags) {
                            recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, m2);
                        } else {
                            d0 d0Var2 = this.mViewInfoStore;
                            d0.a orDefault2 = d0Var2.a.getOrDefault(childViewHolderInt2, null);
                            if (orDefault2 == null) {
                                orDefault2 = d0.a.a();
                                d0Var2.a.put(childViewHolderInt2, orDefault2);
                            }
                            orDefault2.a |= 2;
                            orDefault2.b = m2;
                        }
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.d = 2;
    }

    private void dispatchLayoutStep2() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.c();
        this.mState.e = this.mAdapter.b();
        y yVar = this.mState;
        yVar.c = 0;
        yVar.g = false;
        this.mLayout.H0(this.mRecycler, yVar);
        y yVar2 = this.mState;
        yVar2.f = false;
        this.mPendingSavedState = null;
        yVar2.j = yVar2.j && this.mItemAnimator != null;
        yVar2.d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    private void dispatchLayoutStep3() {
        d dVar;
        boolean z2;
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        y yVar = this.mState;
        yVar.d = 1;
        if (yVar.j) {
            for (int e2 = this.mChildHelper.e() - 1; e2 >= 0; e2--) {
                b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(e2));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    Objects.requireNonNull(this.mItemAnimator);
                    l.c cVar = new l.c();
                    View view = childViewHolderInt.itemView;
                    cVar.a = view.getLeft();
                    cVar.b = view.getTop();
                    view.getRight();
                    view.getBottom();
                    b0 h2 = this.mViewInfoStore.b.h(changedHolderKey, null);
                    if (h2 == null || h2.shouldIgnore()) {
                        this.mViewInfoStore.b(childViewHolderInt, cVar);
                    } else {
                        boolean d2 = this.mViewInfoStore.d(h2);
                        boolean d3 = this.mViewInfoStore.d(childViewHolderInt);
                        if (!d2 || h2 != childViewHolderInt) {
                            l.c g2 = this.mViewInfoStore.g(h2);
                            this.mViewInfoStore.b(childViewHolderInt, cVar);
                            l.c f2 = this.mViewInfoStore.f(childViewHolderInt);
                            if (g2 == null) {
                                handleMissingPreInfoForChangeError(changedHolderKey, childViewHolderInt, h2);
                            } else {
                                animateChange(h2, childViewHolderInt, g2, f2, d2, d3);
                            }
                        } else {
                            this.mViewInfoStore.b(childViewHolderInt, cVar);
                        }
                    }
                }
            }
            d0 d0Var = this.mViewInfoStore;
            d0.b bVar = this.mViewInfoProcessCallback;
            for (int size = d0Var.a.size() - 1; size >= 0; size--) {
                b0 h3 = d0Var.a.h(size);
                d0.a j2 = d0Var.a.j(size);
                int i2 = j2.a;
                if ((i2 & 3) == 3) {
                    RecyclerView recyclerView = RecyclerView.this;
                    recyclerView.mLayout.T0(h3.itemView, recyclerView.mRecycler);
                } else if ((i2 & 1) != 0) {
                    l.c cVar2 = j2.b;
                    if (cVar2 == null) {
                        RecyclerView recyclerView2 = RecyclerView.this;
                        recyclerView2.mLayout.T0(h3.itemView, recyclerView2.mRecycler);
                    } else {
                        l.c cVar3 = j2.c;
                        d dVar2 = (d) bVar;
                        RecyclerView.this.mRecycler.n(h3);
                        RecyclerView.this.animateDisappearance(h3, cVar2, cVar3);
                    }
                } else if ((i2 & 14) == 14) {
                    RecyclerView.this.animateAppearance(h3, j2.b, j2.c);
                } else if ((i2 & 12) == 12) {
                    l.c cVar4 = j2.b;
                    l.c cVar5 = j2.c;
                    d dVar3 = (d) bVar;
                    Objects.requireNonNull(dVar3);
                    h3.setIsRecyclable(false);
                    RecyclerView recyclerView3 = RecyclerView.this;
                    if (!recyclerView3.mDataSetHasChangedAfterLayout) {
                        a0 a0Var = (a0) recyclerView3.mItemAnimator;
                        Objects.requireNonNull(a0Var);
                        int i3 = cVar4.a;
                        int i4 = cVar5.a;
                        if (i3 == i4 && cVar4.b == cVar5.b) {
                            a0Var.d(h3);
                            dVar = dVar3;
                            z2 = false;
                        } else {
                            int i5 = cVar4.b;
                            int i6 = cVar5.b;
                            dVar = dVar3;
                            z2 = a0Var.r(h3, i3, i5, i4, i6);
                        }
                        if (z2) {
                            RecyclerView.this.postAnimationRunner();
                        }
                    } else if (recyclerView3.mItemAnimator.a(h3, h3, cVar4, cVar5)) {
                        RecyclerView.this.postAnimationRunner();
                    }
                } else if ((i2 & 4) != 0) {
                    l.c cVar6 = j2.b;
                    d dVar4 = (d) bVar;
                    RecyclerView.this.mRecycler.n(h3);
                    RecyclerView.this.animateDisappearance(h3, cVar6, null);
                } else if ((i2 & 8) != 0) {
                    RecyclerView.this.animateAppearance(h3, j2.b, j2.c);
                }
                d0.a.b(j2);
            }
        }
        this.mLayout.S0(this.mRecycler);
        y yVar2 = this.mState;
        yVar2.b = yVar2.e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        yVar2.j = false;
        yVar2.k = false;
        this.mLayout.h = false;
        ArrayList<b0> arrayList = this.mRecycler.b;
        if (arrayList != null) {
            arrayList.clear();
        }
        o oVar = this.mLayout;
        if (oVar.m) {
            oVar.l = 0;
            oVar.m = false;
            this.mRecycler.o();
        }
        this.mLayout.I0(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        d0 d0Var2 = this.mViewInfoStore;
        d0Var2.a.clear();
        d0Var2.b.b();
        int[] iArr = this.mMinMaxLayoutPositions;
        if (didChildRangeChange(iArr[0], iArr[1])) {
            dispatchOnScrolled(0, 0);
        }
        recoverFocusFromState();
        resetFocusInfo();
    }

    private boolean dispatchToOnItemTouchListeners(MotionEvent motionEvent) {
        r rVar = this.mInterceptingOnItemTouchListener;
        if (rVar != null) {
            rVar.a(this, motionEvent);
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.mInterceptingOnItemTouchListener = null;
            }
            return true;
        } else if (motionEvent.getAction() == 0) {
            return false;
        } else {
            return findInterceptingOnItemTouchListener(motionEvent);
        }
    }

    private boolean findInterceptingOnItemTouchListener(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            r rVar = this.mOnItemTouchListeners.get(i2);
            if (rVar.c(this, motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = rVar;
                return true;
            }
        }
        return false;
    }

    private void findMinMaxChildLayoutPositions(int[] iArr) {
        int e2 = this.mChildHelper.e();
        if (e2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = UNDEFINED_DURATION;
        for (int i4 = 0; i4 < e2; i4++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i4));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i2) {
                    i2 = layoutPosition;
                }
                if (layoutPosition > i3) {
                    i3 = layoutPosition;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView findNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i2));
            if (findNestedRecyclerView != null) {
                return findNestedRecyclerView;
            }
        }
        return null;
    }

    private View findNextViewToFocus() {
        b0 findViewHolderForAdapterPosition;
        y yVar = this.mState;
        int i2 = yVar.l;
        if (i2 == -1) {
            i2 = 0;
        }
        int b2 = yVar.b();
        for (int i3 = i2; i3 < b2; i3++) {
            b0 findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
            if (findViewHolderForAdapterPosition2 == null) {
                break;
            } else if (findViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition2.itemView;
            }
        }
        int min = Math.min(b2, i2);
        while (true) {
            min--;
            if (min < 0 || (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) == null) {
                return null;
            }
            if (findViewHolderForAdapterPosition.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition.itemView;
            }
        }
    }

    static b0 getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).a;
    }

    static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    private int getDeepestFocusedViewWithId(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        } else if (str.contains(".")) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + '.' + str;
        }
    }

    private t2 getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new t2(this);
        }
        return this.mScrollingChildHelper;
    }

    private void handleMissingPreInfoForChangeError(long j2, b0 b0Var, b0 b0Var2) {
        int e2 = this.mChildHelper.e();
        for (int i2 = 0; i2 < e2; i2++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (childViewHolderInt != b0Var && getChangedHolderKey(childViewHolderInt) == j2) {
                g gVar = this.mAdapter;
                if (gVar == null || !gVar.e()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + b0Var + exceptionLabel());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + childViewHolderInt + " \n View Holder 2:" + b0Var + exceptionLabel());
            }
        }
        Log.e(TAG, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + b0Var2 + " cannot be found but it is necessary for " + b0Var + exceptionLabel());
    }

    private boolean hasUpdatedView() {
        int e2 = this.mChildHelper.e();
        for (int i2 = 0; i2 < e2; i2++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i2));
            if (!(childViewHolderInt == null || childViewHolderInt.shouldIgnore() || !childViewHolderInt.isUpdated())) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void initAutofill() {
        int i2 = c3.g;
        int i3 = Build.VERSION.SDK_INT;
        if ((i3 >= 26 ? getImportantForAutofill() : 0) == 0 && i3 >= 26) {
            setImportantForAutofill(8);
        }
    }

    private void initChildrenHelper() {
        this.mChildHelper = new d(new e());
    }

    private boolean isPreferredNextFocus(View view, View view2, int i2) {
        int i3;
        if (view2 == null || view2 == this || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
        this.mTempRect2.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        offsetDescendantRectToMyCoords(view2, this.mTempRect2);
        char c2 = 65535;
        int i4 = this.mLayout.P() == 1 ? -1 : 1;
        Rect rect = this.mTempRect;
        int i5 = rect.left;
        Rect rect2 = this.mTempRect2;
        int i6 = rect2.left;
        if ((i5 < i6 || rect.right <= i6) && rect.right < rect2.right) {
            i3 = 1;
        } else {
            int i7 = rect.right;
            int i8 = rect2.right;
            i3 = ((i7 > i8 || i5 >= i8) && i5 > i6) ? -1 : 0;
        }
        int i9 = rect.top;
        int i10 = rect2.top;
        if ((i9 < i10 || rect.bottom <= i10) && rect.bottom < rect2.bottom) {
            c2 = 1;
        } else {
            int i11 = rect.bottom;
            int i12 = rect2.bottom;
            if ((i11 <= i12 && i9 < i12) || i9 <= i10) {
                c2 = 0;
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 17) {
                    if (i2 != 33) {
                        if (i2 != 66) {
                            if (i2 != 130) {
                                throw new IllegalArgumentException("Invalid direction: " + i2 + exceptionLabel());
                            } else if (c2 > 0) {
                                return true;
                            } else {
                                return false;
                            }
                        } else if (i3 > 0) {
                            return true;
                        } else {
                            return false;
                        }
                    } else if (c2 < 0) {
                        return true;
                    } else {
                        return false;
                    }
                } else if (i3 < 0) {
                    return true;
                } else {
                    return false;
                }
            } else if (c2 > 0 || (c2 == 0 && i3 * i4 >= 0)) {
                return true;
            } else {
                return false;
            }
        } else if (c2 < 0 || (c2 == 0 && i3 * i4 <= 0)) {
            return true;
        } else {
            return false;
        }
    }

    private void onPointerUp(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i2);
            int x2 = (int) (motionEvent.getX(i2) + 0.5f);
            this.mLastTouchX = x2;
            this.mInitialTouchX = x2;
            int y2 = (int) (motionEvent.getY(i2) + 0.5f);
            this.mLastTouchY = y2;
            this.mInitialTouchY = y2;
        }
    }

    private boolean predictiveItemAnimationsEnabled() {
        return this.mItemAnimator != null && this.mLayout.k1();
    }

    private void processAdapterUpdatesAndSetAnimationFlags() {
        boolean z2;
        if (this.mDataSetHasChangedAfterLayout) {
            this.mAdapterHelper.r();
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.C0(this);
            }
        }
        if (predictiveItemAnimationsEnabled()) {
            this.mAdapterHelper.o();
        } else {
            this.mAdapterHelper.c();
        }
        boolean z3 = false;
        boolean z4 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.j = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z2 = this.mDataSetHasChangedAfterLayout) || z4 || this.mLayout.h) && (!z2 || this.mAdapter.e());
        y yVar = this.mState;
        if (yVar.j && z4 && !this.mDataSetHasChangedAfterLayout && predictiveItemAnimationsEnabled()) {
            z3 = true;
        }
        yVar.k = z3;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0056  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void pullGlows(float r7, float r8, float r9, float r10) {
        /*
        // Method dump skipped, instructions count: 130
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.pullGlows(float, float, float, float):void");
    }

    private void recoverFocusFromState() {
        View findViewById;
        if (this.mPreserveFocusAfterLayout && this.mAdapter != null && hasFocus() && getDescendantFocusability() != 393216) {
            if (getDescendantFocusability() != 131072 || !isFocused()) {
                if (!isFocused()) {
                    View focusedChild = getFocusedChild();
                    if (!IGNORE_DETACHED_FOCUSED_CHILD || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                        if (!this.mChildHelper.l(focusedChild)) {
                            return;
                        }
                    } else if (this.mChildHelper.e() == 0) {
                        requestFocus();
                        return;
                    }
                }
                View view = null;
                b0 findViewHolderForItemId = (this.mState.m == -1 || !this.mAdapter.e()) ? null : findViewHolderForItemId(this.mState.m);
                if (findViewHolderForItemId != null && !this.mChildHelper.l(findViewHolderForItemId.itemView) && findViewHolderForItemId.itemView.hasFocusable()) {
                    view = findViewHolderForItemId.itemView;
                } else if (this.mChildHelper.e() > 0) {
                    view = findNextViewToFocus();
                }
                if (view != null) {
                    int i2 = this.mState.n;
                    if (!(((long) i2) == -1 || (findViewById = view.findViewById(i2)) == null || !findViewById.isFocusable())) {
                        view = findViewById;
                    }
                    view.requestFocus();
                }
            }
        }
    }

    private void releaseGlows() {
        boolean z2;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z2 = this.mLeftGlow.isFinished();
        } else {
            z2 = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z2 |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z2 |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z2 |= this.mBottomGlow.isFinished();
        }
        if (z2) {
            int i2 = c3.g;
            postInvalidateOnAnimation();
        }
    }

    private void requestChildOnScreen(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.c) {
                Rect rect = layoutParams2.b;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.V0(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    private void resetFocusInfo() {
        y yVar = this.mState;
        yVar.m = -1;
        yVar.l = -1;
        yVar.n = -1;
    }

    private void resetScroll() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        releaseGlows();
    }

    private void saveFocusInfo() {
        int i2;
        b0 b0Var = null;
        View focusedChild = (!this.mPreserveFocusAfterLayout || !hasFocus() || this.mAdapter == null) ? null : getFocusedChild();
        if (focusedChild != null) {
            b0Var = findContainingViewHolder(focusedChild);
        }
        if (b0Var == null) {
            resetFocusInfo();
            return;
        }
        this.mState.m = this.mAdapter.e() ? b0Var.getItemId() : -1;
        y yVar = this.mState;
        if (this.mDataSetHasChangedAfterLayout) {
            i2 = -1;
        } else if (b0Var.isRemoved()) {
            i2 = b0Var.mOldPosition;
        } else {
            i2 = b0Var.getAdapterPosition();
        }
        yVar.l = i2;
        this.mState.n = getDeepestFocusedViewWithId(b0Var.itemView);
    }

    private void setAdapterInternal(g gVar, boolean z2, boolean z3) {
        g gVar2 = this.mAdapter;
        if (gVar2 != null) {
            gVar2.y(this.mObserver);
            this.mAdapter.t(this);
        }
        if (!z2 || z3) {
            removeAndRecycleViews();
        }
        this.mAdapterHelper.r();
        g gVar3 = this.mAdapter;
        this.mAdapter = gVar;
        if (gVar != null) {
            gVar.w(this.mObserver);
            gVar.p(this);
        }
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.p0();
        }
        u uVar = this.mRecycler;
        g gVar4 = this.mAdapter;
        uVar.b();
        uVar.d().f(gVar3, gVar4, z2);
        this.mState.f = true;
    }

    private void stopScrollersInternal() {
        x xVar;
        this.mViewFlinger.d();
        o oVar = this.mLayout;
        if (oVar != null && (xVar = oVar.g) != null) {
            xVar.l();
        }
    }

    /* access modifiers changed from: package-private */
    public void absorbGlows(int i2, int i3) {
        if (i2 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i2);
            }
        }
        if (i3 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i3);
            }
        } else if (i3 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i3);
            }
        }
        if (i2 != 0 || i3 != 0) {
            int i4 = c3.g;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        o oVar = this.mLayout;
        if (oVar == null || !oVar.q0()) {
            super.addFocusables(arrayList, i2, i3);
        }
    }

    public void addItemDecoration(n nVar, int i2) {
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.g("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.mItemDecorations.add(nVar);
        } else {
            this.mItemDecorations.add(i2, nVar);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(p pVar) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(pVar);
    }

    public void addOnItemTouchListener(r rVar) {
        this.mOnItemTouchListeners.add(rVar);
    }

    public void addOnScrollListener(s sVar) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(sVar);
    }

    /* access modifiers changed from: package-private */
    public void animateAppearance(b0 b0Var, l.c cVar, l.c cVar2) {
        boolean z2;
        int i2;
        int i3;
        b0Var.setIsRecyclable(false);
        a0 a0Var = (a0) this.mItemAnimator;
        Objects.requireNonNull(a0Var);
        if (cVar == null || ((i2 = cVar.a) == (i3 = cVar2.a) && cVar.b == cVar2.b)) {
            z2 = a0Var.p(b0Var);
        } else {
            z2 = a0Var.r(b0Var, i2, cVar.b, i3, cVar2.b);
        }
        if (z2) {
            postAnimationRunner();
        }
    }

    /* access modifiers changed from: package-private */
    public void animateDisappearance(b0 b0Var, l.c cVar, l.c cVar2) {
        boolean z2;
        addAnimatingView(b0Var);
        b0Var.setIsRecyclable(false);
        a0 a0Var = (a0) this.mItemAnimator;
        Objects.requireNonNull(a0Var);
        int i2 = cVar.a;
        int i3 = cVar.b;
        View view = b0Var.itemView;
        int left = cVar2 == null ? view.getLeft() : cVar2.a;
        int top = cVar2 == null ? view.getTop() : cVar2.b;
        if (b0Var.isRemoved() || (i2 == left && i3 == top)) {
            z2 = a0Var.s(b0Var);
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            z2 = a0Var.r(b0Var, i2, i3, left, top);
        }
        if (z2) {
            postAnimationRunner();
        }
    }

    /* access modifiers changed from: package-private */
    public void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            StringBuilder q2 = ic.q("Cannot call this method unless RecyclerView is computing a layout or scrolling");
            q2.append(exceptionLabel());
            throw new IllegalStateException(q2.toString());
        }
        StringBuilder q3 = ic.q(str);
        q3.append(exceptionLabel());
        throw new IllegalStateException(q3.toString());
    }

    /* access modifiers changed from: package-private */
    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str == null) {
                StringBuilder q2 = ic.q("Cannot call this method while RecyclerView is computing a layout or scrolling");
                q2.append(exceptionLabel());
                throw new IllegalStateException(q2.toString());
            }
            throw new IllegalStateException(str);
        } else if (this.mDispatchScrollCounter > 0) {
            StringBuilder q3 = ic.q("");
            q3.append(exceptionLabel());
            Log.w(TAG, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(q3.toString()));
        }
    }

    /* access modifiers changed from: package-private */
    public boolean canReuseUpdatedViewHolder(b0 b0Var) {
        l lVar = this.mItemAnimator;
        return lVar == null || lVar.c(b0Var, b0Var.getUnmodifiedPayloads());
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.mLayout.k((LayoutParams) layoutParams);
    }

    /* access modifiers changed from: package-private */
    public void clearOldPositions() {
        int h2 = this.mChildHelper.h();
        for (int i2 = 0; i2 < h2; i2++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        u uVar = this.mRecycler;
        int size = uVar.c.size();
        for (int i3 = 0; i3 < size; i3++) {
            uVar.c.get(i3).clearOldPosition();
        }
        int size2 = uVar.a.size();
        for (int i4 = 0; i4 < size2; i4++) {
            uVar.a.get(i4).clearOldPosition();
        }
        ArrayList<b0> arrayList = uVar.b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i5 = 0; i5 < size3; i5++) {
                uVar.b.get(i5).clearOldPosition();
            }
        }
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<p> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<s> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    public int computeHorizontalScrollExtent() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.i()) {
            return this.mLayout.o(this.mState);
        }
        return 0;
    }

    public int computeHorizontalScrollOffset() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.i()) {
            return this.mLayout.p(this.mState);
        }
        return 0;
    }

    public int computeHorizontalScrollRange() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.i()) {
            return this.mLayout.q(this.mState);
        }
        return 0;
    }

    public int computeVerticalScrollExtent() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.j()) {
            return this.mLayout.r(this.mState);
        }
        return 0;
    }

    public int computeVerticalScrollOffset() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.j()) {
            return this.mLayout.s(this.mState);
        }
        return 0;
    }

    public int computeVerticalScrollRange() {
        o oVar = this.mLayout;
        if (oVar != null && oVar.j()) {
            return this.mLayout.t(this.mState);
        }
        return 0;
    }

    /* access modifiers changed from: package-private */
    public void considerReleasingGlowsOnScroll(int i2, int i3) {
        boolean z2;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            z2 = false;
        } else {
            this.mLeftGlow.onRelease();
            z2 = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.mRightGlow.onRelease();
            z2 |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.mTopGlow.onRelease();
            z2 |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.mBottomGlow.onRelease();
            z2 |= this.mBottomGlow.isFinished();
        }
        if (z2) {
            int i4 = c3.g;
            postInvalidateOnAnimation();
        }
    }

    /* access modifiers changed from: package-private */
    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            int i2 = b2.a;
            Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            Trace.endSection();
        } else if (this.mAdapterHelper.h()) {
            if (this.mAdapterHelper.g(4) && !this.mAdapterHelper.g(11)) {
                int i3 = b2.a;
                Trace.beginSection(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                this.mAdapterHelper.o();
                if (!this.mLayoutWasDefered) {
                    if (hasUpdatedView()) {
                        dispatchLayout();
                    } else {
                        this.mAdapterHelper.b();
                    }
                }
                stopInterceptRequestLayout(true);
                onExitLayoutOrScroll();
                Trace.endSection();
            } else if (this.mAdapterHelper.h()) {
                int i4 = b2.a;
                Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                dispatchLayout();
                Trace.endSection();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void defaultOnMeasure(int i2, int i3) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int i4 = c3.g;
        setMeasuredDimension(o.l(i2, paddingRight, getMinimumWidth()), o.l(i3, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    /* access modifiers changed from: package-private */
    public void dispatchChildAttached(View view) {
        b0 childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        g gVar = this.mAdapter;
        if (!(gVar == null || childViewHolderInt == null)) {
            gVar.u(childViewHolderInt);
        }
        List<p> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).d(view);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void dispatchChildDetached(View view) {
        b0 childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        g gVar = this.mAdapter;
        if (!(gVar == null || childViewHolderInt == null)) {
            Objects.requireNonNull(gVar);
        }
        List<p> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).b(view);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void dispatchLayout() {
        if (this.mAdapter == null) {
            Log.e(TAG, "No adapter attached; skipping layout");
        } else if (this.mLayout == null) {
            Log.e(TAG, "No layout manager attached; skipping layout");
        } else {
            y yVar = this.mState;
            boolean z2 = false;
            yVar.i = false;
            if (yVar.d == 1) {
                dispatchLayoutStep1();
                this.mLayout.a1(this);
                dispatchLayoutStep2();
            } else {
                a aVar = this.mAdapterHelper;
                if (!aVar.c.isEmpty() && !aVar.b.isEmpty()) {
                    z2 = true;
                }
                if (!z2 && this.mLayout.e0() == getWidth() && this.mLayout.M() == getHeight()) {
                    this.mLayout.a1(this);
                } else {
                    this.mLayout.a1(this);
                    dispatchLayoutStep2();
                }
            }
            dispatchLayoutStep3();
        }
    }

    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return getScrollingChildHelper().a(f2, f3, z2);
    }

    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().b(f2, f3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i2, i3, iArr, iArr2, 0);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().e(i2, i3, i4, i5, iArr);
    }

    /* access modifiers changed from: package-private */
    public void dispatchOnScrollStateChanged(int i2) {
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.O0(i2);
        }
        onScrollStateChanged(i2);
        s sVar = this.mScrollListener;
        if (sVar != null) {
            sVar.a(this, i2);
        }
        List<s> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).a(this, i2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void dispatchOnScrolled(int i2, int i3) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i3);
        onScrolled(i2, i3);
        s sVar = this.mScrollListener;
        if (sVar != null) {
            sVar.b(this, i2, i3);
        }
        List<s> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).b(this, i2, i3);
            }
        }
        this.mDispatchScrollCounter--;
    }

    /* access modifiers changed from: package-private */
    public void dispatchPendingImportantForAccessibilityChanges() {
        int i2;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            b0 b0Var = this.mPendingAccessibilityImportanceChange.get(size);
            if (b0Var.itemView.getParent() == this && !b0Var.shouldIgnore() && (i2 = b0Var.mPendingAccessibilityState) != -1) {
                View view = b0Var.itemView;
                int i3 = c3.g;
                view.setImportantForAccessibility(i2);
                b0Var.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // android.view.View, android.view.ViewGroup
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    /* access modifiers changed from: protected */
    @Override // android.view.View, android.view.ViewGroup
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    public void draw(Canvas canvas) {
        boolean z2;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z3 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).h(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        boolean z4 = true;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z2 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((float) ((-getHeight()) + paddingBottom), 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z2 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z2 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate((float) (-paddingTop), (float) (-width));
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z2 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate((float) (getPaddingRight() + (-getWidth())), (float) (getPaddingBottom() + (-getHeight())));
            } else {
                canvas.translate((float) (-getWidth()), (float) (-getHeight()));
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z3 = true;
            }
            z2 |= z3;
            canvas.restoreToCount(save4);
        }
        if (z2 || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.l()) {
            z4 = z2;
        }
        if (z4) {
            int i3 = c3.g;
            postInvalidateOnAnimation();
        }
    }

    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    /* access modifiers changed from: package-private */
    public void ensureBottomGlow() {
        if (this.mBottomGlow == null) {
            EdgeEffect a2 = this.mEdgeEffectFactory.a(this);
            this.mBottomGlow = a2;
            if (this.mClipToPadding) {
                a2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a2.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void ensureLeftGlow() {
        if (this.mLeftGlow == null) {
            EdgeEffect a2 = this.mEdgeEffectFactory.a(this);
            this.mLeftGlow = a2;
            if (this.mClipToPadding) {
                a2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a2.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void ensureRightGlow() {
        if (this.mRightGlow == null) {
            EdgeEffect a2 = this.mEdgeEffectFactory.a(this);
            this.mRightGlow = a2;
            if (this.mClipToPadding) {
                a2.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
            } else {
                a2.setSize(getMeasuredHeight(), getMeasuredWidth());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void ensureTopGlow() {
        if (this.mTopGlow == null) {
            EdgeEffect a2 = this.mEdgeEffectFactory.a(this);
            this.mTopGlow = a2;
            if (this.mClipToPadding) {
                a2.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            } else {
                a2.setSize(getMeasuredWidth(), getMeasuredHeight());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public String exceptionLabel() {
        StringBuilder q2 = ic.q(" ");
        q2.append(super.toString());
        q2.append(", adapter:");
        q2.append(this.mAdapter);
        q2.append(", layout:");
        q2.append(this.mLayout);
        q2.append(", context:");
        q2.append(getContext());
        return q2.toString();
    }

    /* access modifiers changed from: package-private */
    public final void fillRemainingScrollValues(y yVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.mViewFlinger.d;
            overScroller.getFinalX();
            overScroller.getCurrX();
            Objects.requireNonNull(yVar);
            overScroller.getFinalY();
            overScroller.getCurrY();
            return;
        }
        Objects.requireNonNull(yVar);
    }

    public View findChildViewUnder(float f2, float f3) {
        for (int e2 = this.mChildHelper.e() - 1; e2 >= 0; e2--) {
            View d2 = this.mChildHelper.d(e2);
            float translationX = d2.getTranslationX();
            float translationY = d2.getTranslationY();
            if (f2 >= ((float) d2.getLeft()) + translationX && f2 <= ((float) d2.getRight()) + translationX && f3 >= ((float) d2.getTop()) + translationY && f3 <= ((float) d2.getBottom()) + translationY) {
                return d2;
            }
        }
        return null;
    }

    public View findContainingItemView(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = (View) parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public b0 findContainingViewHolder(View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    public b0 findViewHolderForAdapterPosition(int i2) {
        b0 b0Var = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int h2 = this.mChildHelper.h();
        for (int i3 = 0; i3 < h2; i3++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i3));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionFor(childViewHolderInt) == i2) {
                if (!this.mChildHelper.l(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                b0Var = childViewHolderInt;
            }
        }
        return b0Var;
    }

    public b0 findViewHolderForItemId(long j2) {
        g gVar = this.mAdapter;
        b0 b0Var = null;
        if (gVar != null && gVar.e()) {
            int h2 = this.mChildHelper.h();
            for (int i2 = 0; i2 < h2; i2++) {
                b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j2) {
                    if (!this.mChildHelper.l(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    b0Var = childViewHolderInt;
                }
            }
        }
        return b0Var;
    }

    public b0 findViewHolderForLayoutPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    @Deprecated
    public b0 findViewHolderForPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:0x0098 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean fling(int r10, int r11) {
        /*
        // Method dump skipped, instructions count: 194
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.fling(int, int):boolean");
    }

    public View focusSearch(View view, int i2) {
        View view2;
        boolean z2;
        View A0 = this.mLayout.A0();
        if (A0 != null) {
            return A0;
        }
        boolean z3 = true;
        boolean z4 = this.mAdapter != null && this.mLayout != null && !isComputingLayout() && !this.mLayoutSuppressed;
        FocusFinder instance = FocusFinder.getInstance();
        if (!z4 || !(i2 == 2 || i2 == 1)) {
            View findNextFocus = instance.findNextFocus(this, view, i2);
            if (findNextFocus != null || !z4) {
                view2 = findNextFocus;
            } else {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                view2 = this.mLayout.u0(view, i2, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
        } else {
            if (this.mLayout.j()) {
                int i3 = i2 == 2 ? 130 : 33;
                z2 = instance.findNextFocus(this, view, i3) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i2 = i3;
                }
            } else {
                z2 = false;
            }
            if (!z2 && this.mLayout.i()) {
                int i4 = (this.mLayout.P() == 1) ^ (i2 == 2) ? 66 : 17;
                if (instance.findNextFocus(this, view, i4) != null) {
                    z3 = false;
                }
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i2 = i4;
                }
                z2 = z3;
            }
            if (z2) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.u0(view, i2, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            view2 = instance.findNextFocus(this, view, i2);
        }
        if (view2 == null || view2.hasFocusable()) {
            return isPreferredNextFocus(view, view2, i2) ? view2 : super.focusSearch(view, i2);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        }
        requestChildOnScreen(view2, null);
        return view;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        o oVar = this.mLayout;
        if (oVar != null) {
            return oVar.x();
        }
        StringBuilder q2 = ic.q("RecyclerView has no LayoutManager");
        q2.append(exceptionLabel());
        throw new IllegalStateException(q2.toString());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        o oVar = this.mLayout;
        if (oVar != null) {
            return oVar.y(getContext(), attributeSet);
        }
        StringBuilder q2 = ic.q("RecyclerView has no LayoutManager");
        q2.append(exceptionLabel());
        throw new IllegalStateException(q2.toString());
    }

    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public g getAdapter() {
        return this.mAdapter;
    }

    /* access modifiers changed from: package-private */
    public int getAdapterPositionFor(b0 b0Var) {
        if (b0Var.hasAnyOfTheFlags(524) || !b0Var.isBound()) {
            return -1;
        }
        a aVar = this.mAdapterHelper;
        int i2 = b0Var.mPosition;
        int size = aVar.b.size();
        for (int i3 = 0; i3 < size; i3++) {
            a.b bVar = aVar.b.get(i3);
            int i4 = bVar.a;
            if (i4 != 1) {
                if (i4 == 2) {
                    int i5 = bVar.b;
                    if (i5 <= i2) {
                        int i6 = bVar.d;
                        if (i5 + i6 > i2) {
                            return -1;
                        }
                        i2 -= i6;
                    } else {
                        continue;
                    }
                } else if (i4 == 8) {
                    int i7 = bVar.b;
                    if (i7 == i2) {
                        i2 = bVar.d;
                    } else {
                        if (i7 < i2) {
                            i2--;
                        }
                        if (bVar.d <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (bVar.b <= i2) {
                i2 += bVar.d;
            }
        }
        return i2;
    }

    public int getBaseline() {
        o oVar = this.mLayout;
        if (oVar == null) {
            return super.getBaseline();
        }
        Objects.requireNonNull(oVar);
        return -1;
    }

    /* access modifiers changed from: package-private */
    public long getChangedHolderKey(b0 b0Var) {
        return this.mAdapter.e() ? b0Var.getItemId() : (long) b0Var.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        b0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAdapterPosition();
        }
        return -1;
    }

    /* access modifiers changed from: protected */
    public int getChildDrawingOrder(int i2, int i3) {
        j jVar = this.mChildDrawingOrderCallback;
        if (jVar == null) {
            return super.getChildDrawingOrder(i2, i3);
        }
        n nVar = (n) jVar;
        o oVar = nVar.a;
        View view = oVar.b;
        if (view == null) {
            return i3;
        }
        int i4 = oVar.c;
        if (i4 == -1) {
            i4 = oVar.a.indexOfChild(view);
            nVar.a.c = i4;
        }
        if (i3 == i2 - 1) {
            return i4;
        }
        return i3 < i4 ? i3 : i3 + 1;
    }

    public long getChildItemId(View view) {
        b0 childViewHolderInt;
        g gVar = this.mAdapter;
        if (gVar == null || !gVar.e() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1;
        }
        return childViewHolderInt.getItemId();
    }

    public int getChildLayoutPosition(View view) {
        b0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public b0 getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public y getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public k getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public l getItemAnimator() {
        return this.mItemAnimator;
    }

    /* access modifiers changed from: package-private */
    public Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.c) {
            return layoutParams.b;
        }
        if (this.mState.g && (layoutParams.b() || layoutParams.a.isInvalid())) {
            return layoutParams.b;
        }
        Rect rect = layoutParams.b;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i2).f(this.mTempRect, view, this, this.mState);
            int i3 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i3 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.c = false;
        return rect;
    }

    public n getItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            return this.mItemDecorations.get(i2);
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public o getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    /* access modifiers changed from: package-private */
    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0;
    }

    public q getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public t getRecycledViewPool() {
        return this.mRecycler.d();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().i(0);
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.h();
    }

    /* access modifiers changed from: package-private */
    public void initAdapterManager() {
        this.mAdapterHelper = new a(new f());
    }

    /* access modifiers changed from: package-private */
    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            StringBuilder q2 = ic.q("Trying to set fast scroller without both required drawables.");
            q2.append(exceptionLabel());
            throw new IllegalArgumentException(q2.toString());
        }
        Resources resources = getContext().getResources();
        new l(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R.dimen.qq), resources.getDimensionPixelSize(R.dimen.qs), resources.getDimensionPixelOffset(R.dimen.qr));
    }

    /* access modifiers changed from: package-private */
    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() != 0) {
            o oVar = this.mLayout;
            if (oVar != null) {
                oVar.g("Cannot invalidate item decorations during a scroll or layout");
            }
            markItemDecorInsetsDirty();
            requestLayout();
        }
    }

    /* access modifiers changed from: package-private */
    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        l lVar = this.mItemAnimator;
        return lVar != null && lVar.l();
    }

    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // defpackage.s2
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().j();
    }

    /* access modifiers changed from: package-private */
    public void jumpToPositionForSmoothScroller(int i2) {
        if (this.mLayout != null) {
            setScrollState(2);
            this.mLayout.Y0(i2);
            awakenScrollBars();
        }
    }

    /* access modifiers changed from: package-private */
    public void markItemDecorInsetsDirty() {
        int h2 = this.mChildHelper.h();
        for (int i2 = 0; i2 < h2; i2++) {
            ((LayoutParams) this.mChildHelper.g(i2).getLayoutParams()).c = true;
        }
        u uVar = this.mRecycler;
        int size = uVar.c.size();
        for (int i3 = 0; i3 < size; i3++) {
            LayoutParams layoutParams = (LayoutParams) uVar.c.get(i3).itemView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.c = true;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void markKnownViewsInvalid() {
        int h2 = this.mChildHelper.h();
        for (int i2 = 0; i2 < h2; i2++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        u uVar = this.mRecycler;
        int size = uVar.c.size();
        for (int i3 = 0; i3 < size; i3++) {
            b0 b0Var = uVar.c.get(i3);
            if (b0Var != null) {
                b0Var.addFlags(6);
                b0Var.addChangePayload(null);
            }
        }
        g gVar = RecyclerView.this.mAdapter;
        if (gVar == null || !gVar.e()) {
            uVar.g();
        }
    }

    public void offsetChildrenHorizontal(int i2) {
        int e2 = this.mChildHelper.e();
        for (int i3 = 0; i3 < e2; i3++) {
            this.mChildHelper.d(i3).offsetLeftAndRight(i2);
        }
    }

    public void offsetChildrenVertical(int i2) {
        int e2 = this.mChildHelper.e();
        for (int i3 = 0; i3 < e2; i3++) {
            this.mChildHelper.d(i3).offsetTopAndBottom(i2);
        }
    }

    /* access modifiers changed from: package-private */
    public void offsetPositionRecordsForInsert(int i2, int i3) {
        int h2 = this.mChildHelper.h();
        for (int i4 = 0; i4 < h2; i4++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i2) {
                childViewHolderInt.offsetPosition(i3, false);
                this.mState.f = true;
            }
        }
        u uVar = this.mRecycler;
        int size = uVar.c.size();
        for (int i5 = 0; i5 < size; i5++) {
            b0 b0Var = uVar.c.get(i5);
            if (b0Var != null && b0Var.mPosition >= i2) {
                b0Var.offsetPosition(i3, true);
            }
        }
        requestLayout();
    }

    /* access modifiers changed from: package-private */
    public void offsetPositionRecordsForMove(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int h2 = this.mChildHelper.h();
        int i11 = -1;
        if (i2 < i3) {
            i6 = i2;
            i5 = i3;
            i4 = -1;
        } else {
            i5 = i2;
            i6 = i3;
            i4 = 1;
        }
        for (int i12 = 0; i12 < h2; i12++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i12));
            if (childViewHolderInt != null && (i10 = childViewHolderInt.mPosition) >= i6 && i10 <= i5) {
                if (i10 == i2) {
                    childViewHolderInt.offsetPosition(i3 - i2, false);
                } else {
                    childViewHolderInt.offsetPosition(i4, false);
                }
                this.mState.f = true;
            }
        }
        u uVar = this.mRecycler;
        if (i2 < i3) {
            i8 = i2;
            i7 = i3;
        } else {
            i7 = i2;
            i8 = i3;
            i11 = 1;
        }
        int size = uVar.c.size();
        for (int i13 = 0; i13 < size; i13++) {
            b0 b0Var = uVar.c.get(i13);
            if (b0Var != null && (i9 = b0Var.mPosition) >= i8 && i9 <= i7) {
                if (i9 == i2) {
                    b0Var.offsetPosition(i3 - i2, false);
                } else {
                    b0Var.offsetPosition(i11, false);
                }
            }
        }
        requestLayout();
    }

    /* access modifiers changed from: package-private */
    public void offsetPositionRecordsForRemove(int i2, int i3, boolean z2) {
        int i4 = i2 + i3;
        int h2 = this.mChildHelper.h();
        for (int i5 = 0; i5 < h2; i5++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i5));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i6 = childViewHolderInt.mPosition;
                if (i6 >= i4) {
                    childViewHolderInt.offsetPosition(-i3, z2);
                    this.mState.f = true;
                } else if (i6 >= i2) {
                    childViewHolderInt.flagRemovedAndOffsetPosition(i2 - 1, -i3, z2);
                    this.mState.f = true;
                }
            }
        }
        u uVar = this.mRecycler;
        int size = uVar.c.size();
        while (true) {
            size--;
            if (size >= 0) {
                b0 b0Var = uVar.c.get(size);
                if (b0Var != null) {
                    int i7 = b0Var.mPosition;
                    if (i7 >= i4) {
                        b0Var.offsetPosition(-i3, z2);
                    } else if (i7 >= i2) {
                        b0Var.addFlags(8);
                        uVar.h(size);
                    }
                }
            } else {
                requestLayout();
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        this.mFirstLayoutComplete = this.mFirstLayoutComplete && !isLayoutRequested();
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.i = true;
            oVar.r0();
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            ThreadLocal<m> threadLocal = m.f;
            m mVar = threadLocal.get();
            this.mGapWorker = mVar;
            if (mVar == null) {
                this.mGapWorker = new m();
                int i2 = c3.g;
                Display display = getDisplay();
                float f2 = 60.0f;
                if (!isInEditMode() && display != null) {
                    float refreshRate = display.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f2 = refreshRate;
                    }
                }
                m mVar2 = this.mGapWorker;
                mVar2.d = (long) (1.0E9f / f2);
                threadLocal.set(mVar2);
            }
            this.mGapWorker.b.add(this);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        m mVar;
        super.onDetachedFromWindow();
        l lVar = this.mItemAnimator;
        if (lVar != null) {
            lVar.g();
        }
        stopScroll();
        this.mIsAttached = false;
        o oVar = this.mLayout;
        if (oVar != null) {
            u uVar = this.mRecycler;
            oVar.i = false;
            oVar.t0(this, uVar);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        Objects.requireNonNull(this.mViewInfoStore);
        do {
        } while (d0.a.d.b() != null);
        if (ALLOW_THREAD_GAP_WORK && (mVar = this.mGapWorker) != null) {
            mVar.b.remove(this);
            this.mGapWorker = null;
        }
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).g(canvas, this, this.mState);
        }
    }

    /* access modifiers changed from: package-private */
    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    /* access modifiers changed from: package-private */
    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f2;
        float f3;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f3 = this.mLayout.j() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.mLayout.i()) {
                    f2 = motionEvent.getAxisValue(10);
                    if (!(f3 == 0.0f && f2 == 0.0f)) {
                        scrollByInternal((int) (f2 * this.mScaledHorizontalScrollFactor), (int) (f3 * this.mScaledVerticalScrollFactor), motionEvent);
                    }
                }
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    float axisValue = motionEvent.getAxisValue(26);
                    if (this.mLayout.j()) {
                        f3 = -axisValue;
                    } else if (this.mLayout.i()) {
                        f2 = axisValue;
                        f3 = 0.0f;
                        scrollByInternal((int) (f2 * this.mScaledHorizontalScrollFactor), (int) (f3 * this.mScaledVerticalScrollFactor), motionEvent);
                    }
                }
                f3 = 0.0f;
            }
            f2 = 0.0f;
            scrollByInternal((int) (f2 * this.mScaledHorizontalScrollFactor), (int) (f3 * this.mScaledVerticalScrollFactor), motionEvent);
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (findInterceptingOnItemTouchListener(motionEvent)) {
            cancelScroll();
            return true;
        }
        o oVar = this.mLayout;
        if (oVar == null) {
            return false;
        }
        boolean i2 = oVar.i();
        boolean j2 = this.mLayout.j();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x2 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x2;
            this.mInitialTouchX = x2;
            int y2 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y2;
            this.mInitialTouchY = y2;
            if (this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            if (j2) {
                boolean z3 = i2 ? 1 : 0;
                char c2 = i2 ? 1 : 0;
                i2 = z3 | true;
            }
            int i3 = i2 ? 1 : 0;
            int i4 = i2 ? 1 : 0;
            int i5 = i2 ? 1 : 0;
            startNestedScroll(i3, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (findPointerIndex < 0) {
                StringBuilder q2 = ic.q("Error processing scroll; pointer index for id ");
                q2.append(this.mScrollPointerId);
                q2.append(" not found. Did any MotionEvents get skipped?");
                Log.e(TAG, q2.toString());
                return false;
            }
            int x3 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y3 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i6 = x3 - this.mInitialTouchX;
                int i7 = y3 - this.mInitialTouchY;
                if (!i2 || Math.abs(i6) <= this.mTouchSlop) {
                    z2 = false;
                } else {
                    this.mLastTouchX = x3;
                    z2 = true;
                }
                if (j2 && Math.abs(i7) > this.mTouchSlop) {
                    this.mLastTouchY = y3;
                    z2 = true;
                }
                if (z2) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            cancelScroll();
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x4 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x4;
            this.mInitialTouchX = x4;
            int y4 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y4;
            this.mInitialTouchY = y4;
        } else if (actionMasked == 6) {
            onPointerUp(motionEvent);
        }
        if (this.mScrollState == 1) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6 = b2.a;
        Trace.beginSection(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        o oVar = this.mLayout;
        if (oVar == null) {
            defaultOnMeasure(i2, i3);
            return;
        }
        boolean z2 = false;
        if (oVar.g0()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.mLayout.J0(i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z2 = true;
            }
            if (!z2 && this.mAdapter != null) {
                if (this.mState.d == 1) {
                    dispatchLayoutStep1();
                }
                this.mLayout.b1(i2, i3);
                this.mState.i = true;
                dispatchLayoutStep2();
                this.mLayout.d1(i2, i3);
                if (this.mLayout.g1()) {
                    this.mLayout.b1(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    this.mState.i = true;
                    dispatchLayoutStep2();
                    this.mLayout.d1(i2, i3);
                }
            }
        } else if (this.mHasFixedSize) {
            this.mLayout.J0(i2, i3);
        } else {
            if (this.mAdapterUpdateDuringMeasure) {
                startInterceptRequestLayout();
                onEnterLayoutOrScroll();
                processAdapterUpdatesAndSetAnimationFlags();
                onExitLayoutOrScroll();
                y yVar = this.mState;
                if (yVar.k) {
                    yVar.g = true;
                } else {
                    this.mAdapterHelper.c();
                    this.mState.g = false;
                }
                this.mAdapterUpdateDuringMeasure = false;
                stopInterceptRequestLayout(false);
            } else if (this.mState.k) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            g gVar = this.mAdapter;
            if (gVar != null) {
                this.mState.e = gVar.b();
            } else {
                this.mState.e = 0;
            }
            startInterceptRequestLayout();
            this.mLayout.J0(i2, i3);
            stopInterceptRequestLayout(false);
            this.mState.g = false;
        }
    }

    /* access modifiers changed from: protected */
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.a());
        o oVar = this.mLayout;
        if (oVar != null && (parcelable2 = this.mPendingSavedState.d) != null) {
            oVar.M0(parcelable2);
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.d = savedState2.d;
        } else {
            o oVar = this.mLayout;
            if (oVar != null) {
                savedState.d = oVar.N0();
            } else {
                savedState.d = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i2) {
    }

    public void onScrolled(int i2, int i3) {
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4 || i3 != i5) {
            invalidateGlows();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:0x00de  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00f4  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
        // Method dump skipped, instructions count: 478
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* access modifiers changed from: package-private */
    public void postAnimationRunner() {
        if (!this.mPostedAnimatorRunner && this.mIsAttached) {
            Runnable runnable = this.mItemAnimatorRunner;
            int i2 = c3.g;
            postOnAnimation(runnable);
            this.mPostedAnimatorRunner = true;
        }
    }

    /* access modifiers changed from: package-private */
    public void processDataSetCompletelyChanged(boolean z2) {
        this.mDispatchItemsChangedEvent = z2 | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    /* access modifiers changed from: package-private */
    public void recordAnimationInfoIfBouncedHiddenView(b0 b0Var, l.c cVar) {
        b0Var.setFlags(0, 8192);
        if (this.mState.h && b0Var.isUpdated() && !b0Var.isRemoved() && !b0Var.shouldIgnore()) {
            this.mViewInfoStore.b.k(getChangedHolderKey(b0Var), b0Var);
        }
        this.mViewInfoStore.c(b0Var, cVar);
    }

    /* access modifiers changed from: package-private */
    public void removeAndRecycleViews() {
        l lVar = this.mItemAnimator;
        if (lVar != null) {
            lVar.g();
        }
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.R0(this.mRecycler);
            this.mLayout.S0(this.mRecycler);
        }
        this.mRecycler.b();
    }

    /* access modifiers changed from: package-private */
    public boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        boolean o2 = this.mChildHelper.o(view);
        if (o2) {
            b0 childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.n(childViewHolderInt);
            this.mRecycler.j(childViewHolderInt);
        }
        stopInterceptRequestLayout(!o2);
        return o2;
    }

    /* access modifiers changed from: protected */
    public void removeDetachedView(View view, boolean z2) {
        b0 childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + childViewHolderInt + exceptionLabel());
            }
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z2);
    }

    public void removeItemDecoration(n nVar) {
        o oVar = this.mLayout;
        if (oVar != null) {
            oVar.g("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(nVar);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 < 0 || i2 >= itemDecorationCount) {
            throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
        }
        removeItemDecoration(getItemDecorationAt(i2));
    }

    public void removeOnChildAttachStateChangeListener(p pVar) {
        List<p> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.remove(pVar);
        }
    }

    public void removeOnItemTouchListener(r rVar) {
        this.mOnItemTouchListeners.remove(rVar);
        if (this.mInterceptingOnItemTouchListener == rVar) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(s sVar) {
        List<s> list = this.mScrollListeners;
        if (list != null) {
            list.remove(sVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void repositionShadowingViews() {
        b0 b0Var;
        int e2 = this.mChildHelper.e();
        for (int i2 = 0; i2 < e2; i2++) {
            View d2 = this.mChildHelper.d(i2);
            b0 childViewHolder = getChildViewHolder(d2);
            if (!(childViewHolder == null || (b0Var = childViewHolder.mShadowingHolder) == null)) {
                View view = b0Var.itemView;
                int left = d2.getLeft();
                int top = d2.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.L0(this, view, view2) && view2 != null) {
            requestChildOnScreen(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        return this.mLayout.V0(this, view, rect, z2, false);
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mOnItemTouchListeners.get(i2).e(z2);
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    /* access modifiers changed from: package-private */
    public void saveOldPositions() {
        int h2 = this.mChildHelper.h();
        for (int i2 = 0; i2 < h2; i2++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i2));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    public void scrollBy(int i2, int i3) {
        o oVar = this.mLayout;
        if (oVar == null) {
            Log.e(TAG, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.mLayoutSuppressed) {
            boolean i4 = oVar.i();
            boolean j2 = this.mLayout.j();
            if (i4 || j2) {
                if (!i4) {
                    i2 = 0;
                }
                if (!j2) {
                    i3 = 0;
                }
                scrollByInternal(i2, i3, null);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean scrollByInternal(int i2, int i3, MotionEvent motionEvent) {
        int i4;
        int i5;
        int i6;
        int i7;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i2, i3, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i8 = iArr2[0];
            int i9 = iArr2[1];
            i7 = i9;
            i6 = i8;
            i5 = i2 - i8;
            i4 = i3 - i9;
        } else {
            i7 = 0;
            i6 = 0;
            i5 = 0;
            i4 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i6, i7, i5, i4, this.mScrollOffset, 0, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i10 = i5 - iArr4[0];
        int i11 = i4 - iArr4[1];
        boolean z2 = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i12 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        this.mLastTouchX = i12 - iArr5[0];
        this.mLastTouchY -= iArr5[1];
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null) {
                if (!((motionEvent.getSource() & 8194) == 8194)) {
                    pullGlows(motionEvent.getX(), (float) i10, motionEvent.getY(), (float) i11);
                }
            }
            considerReleasingGlowsOnScroll(i2, i3);
        }
        if (!(i6 == 0 && i7 == 0)) {
            dispatchOnScrolled(i6, i7);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        if (!z2 && i6 == 0 && i7 == 0) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public void scrollStep(int i2, int i3, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        int i4 = b2.a;
        Trace.beginSection(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int X0 = i2 != 0 ? this.mLayout.X0(i2, this.mRecycler, this.mState) : 0;
        int Z0 = i3 != 0 ? this.mLayout.Z0(i3, this.mRecycler, this.mState) : 0;
        Trace.endSection();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = X0;
            iArr[1] = Z0;
        }
    }

    public void scrollTo(int i2, int i3) {
        Log.w(TAG, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    public void scrollToPosition(int i2) {
        if (!this.mLayoutSuppressed) {
            stopScroll();
            o oVar = this.mLayout;
            if (oVar == null) {
                Log.e(TAG, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
                return;
            }
            oVar.Y0(i2);
            awakenScrollBars();
        }
    }

    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!shouldDeferAccessibilityEvent(accessibilityEvent)) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        }
    }

    public void setAccessibilityDelegateCompat(y yVar) {
        this.mAccessibilityDelegate = yVar;
        c3.u(this, yVar);
    }

    public void setAdapter(g gVar) {
        setLayoutFrozen(false);
        setAdapterInternal(gVar, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(j jVar) {
        if (jVar != this.mChildDrawingOrderCallback) {
            this.mChildDrawingOrderCallback = jVar;
            setChildrenDrawingOrderEnabled(jVar != null);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean setChildImportantForAccessibilityInternal(b0 b0Var, int i2) {
        if (isComputingLayout()) {
            b0Var.mPendingAccessibilityState = i2;
            this.mPendingAccessibilityImportanceChange.add(b0Var);
            return false;
        }
        View view = b0Var.itemView;
        int i3 = c3.g;
        view.setImportantForAccessibility(i2);
        return true;
    }

    public void setClipToPadding(boolean z2) {
        if (z2 != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z2;
        super.setClipToPadding(z2);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(k kVar) {
        Objects.requireNonNull(kVar);
        this.mEdgeEffectFactory = kVar;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z2) {
        this.mHasFixedSize = z2;
    }

    public void setItemAnimator(l lVar) {
        l lVar2 = this.mItemAnimator;
        if (lVar2 != null) {
            lVar2.g();
            this.mItemAnimator.o(null);
        }
        this.mItemAnimator = lVar;
        if (lVar != null) {
            lVar.o(this.mItemAnimatorListener);
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.mRecycler.l(i2);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z2) {
        suppressLayout(z2);
    }

    public void setLayoutManager(o oVar) {
        if (oVar != this.mLayout) {
            stopScroll();
            if (this.mLayout != null) {
                l lVar = this.mItemAnimator;
                if (lVar != null) {
                    lVar.g();
                }
                this.mLayout.R0(this.mRecycler);
                this.mLayout.S0(this.mRecycler);
                this.mRecycler.b();
                if (this.mIsAttached) {
                    o oVar2 = this.mLayout;
                    u uVar = this.mRecycler;
                    oVar2.i = false;
                    oVar2.t0(this, uVar);
                }
                this.mLayout.e1(null);
                this.mLayout = null;
            } else {
                this.mRecycler.b();
            }
            d dVar = this.mChildHelper;
            d.a aVar = dVar.b;
            aVar.a = 0;
            d.a aVar2 = aVar.b;
            if (aVar2 != null) {
                aVar2.g();
            }
            int size = dVar.c.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                e eVar = (e) dVar.a;
                Objects.requireNonNull(eVar);
                b0 childViewHolderInt = getChildViewHolderInt(dVar.c.get(size));
                if (childViewHolderInt != null) {
                    childViewHolderInt.onLeftHiddenState(RecyclerView.this);
                }
                dVar.c.remove(size);
            }
            e eVar2 = (e) dVar.a;
            int b2 = eVar2.b();
            for (int i2 = 0; i2 < b2; i2++) {
                View a2 = eVar2.a(i2);
                RecyclerView.this.dispatchChildDetached(a2);
                a2.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
            this.mLayout = oVar;
            if (oVar != null) {
                if (oVar.b == null) {
                    oVar.e1(this);
                    if (this.mIsAttached) {
                        o oVar3 = this.mLayout;
                        oVar3.i = true;
                        oVar3.r0();
                    }
                } else {
                    throw new IllegalArgumentException("LayoutManager " + oVar + " is already attached to a RecyclerView:" + oVar.b.exceptionLabel());
                }
            }
            this.mRecycler.o();
            requestLayout();
        }
    }

    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    public void setNestedScrollingEnabled(boolean z2) {
        getScrollingChildHelper().k(z2);
    }

    public void setOnFlingListener(q qVar) {
        this.mOnFlingListener = qVar;
    }

    @Deprecated
    public void setOnScrollListener(s sVar) {
        this.mScrollListener = sVar;
    }

    public void setPreserveFocusAfterLayout(boolean z2) {
        this.mPreserveFocusAfterLayout = z2;
    }

    public void setRecycledViewPool(t tVar) {
        u uVar = this.mRecycler;
        t tVar2 = uVar.g;
        if (tVar2 != null) {
            tVar2.b();
        }
        uVar.g = tVar;
        if (tVar != null && RecyclerView.this.getAdapter() != null) {
            uVar.g.a();
        }
    }

    public void setRecyclerListener(v vVar) {
        this.mRecyclerListener = vVar;
    }

    /* access modifiers changed from: package-private */
    public void setScrollState(int i2) {
        if (i2 != this.mScrollState) {
            this.mScrollState = i2;
            if (i2 != 2) {
                stopScrollersInternal();
            }
            dispatchOnScrollStateChanged(i2);
        }
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 != 1) {
                Log.w(TAG, "setScrollingTouchSlop(): bad argument constant " + i2 + "; using default value");
            } else {
                this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(z zVar) {
        Objects.requireNonNull(this.mRecycler);
    }

    /* access modifiers changed from: package-private */
    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int i2 = 0;
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
        if (contentChangeTypes != 0) {
            i2 = contentChangeTypes;
        }
        this.mEatenAccessibilityChangeFlags |= i2;
        return true;
    }

    public void smoothScrollBy(int i2, int i3) {
        smoothScrollBy(i2, i3, null);
    }

    public void smoothScrollToPosition(int i2) {
        if (!this.mLayoutSuppressed) {
            o oVar = this.mLayout;
            if (oVar == null) {
                Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            } else {
                oVar.i1(this, this.mState, i2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void startInterceptRequestLayout() {
        int i2 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i2;
        if (i2 == 1 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
    }

    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().l(i2, 0);
    }

    /* access modifiers changed from: package-private */
    public void stopInterceptRequestLayout(boolean z2) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z2 && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z2 && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // defpackage.s2
    public void stopNestedScroll() {
        getScrollingChildHelper().m(0);
    }

    public void stopScroll() {
        setScrollState(0);
        stopScrollersInternal();
    }

    public final void suppressLayout(boolean z2) {
        if (z2 != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (!z2) {
                this.mLayoutSuppressed = false;
                if (!(!this.mLayoutWasDefered || this.mLayout == null || this.mAdapter == null)) {
                    requestLayout();
                }
                this.mLayoutWasDefered = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.mLayoutSuppressed = true;
            this.mIgnoreMotionEventTillDown = true;
            stopScroll();
        }
    }

    public void swapAdapter(g gVar, boolean z2) {
        setLayoutFrozen(false);
        setAdapterInternal(gVar, true, z2);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    /* access modifiers changed from: package-private */
    public void viewRangeUpdate(int i2, int i3, Object obj) {
        int i4;
        int i5;
        int h2 = this.mChildHelper.h();
        int i6 = i3 + i2;
        for (int i7 = 0; i7 < h2; i7++) {
            View g2 = this.mChildHelper.g(i7);
            b0 childViewHolderInt = getChildViewHolderInt(g2);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i5 = childViewHolderInt.mPosition) >= i2 && i5 < i6) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((LayoutParams) g2.getLayoutParams()).c = true;
            }
        }
        u uVar = this.mRecycler;
        int size = uVar.c.size();
        while (true) {
            size--;
            if (size >= 0) {
                b0 b0Var = uVar.c.get(size);
                if (b0Var != null && (i4 = b0Var.mPosition) >= i2 && i4 < i6) {
                    b0Var.addFlags(2);
                    uVar.h(size);
                }
            } else {
                return;
            }
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.pr);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().f(i2, i3, i4, i5, iArr, i6);
    }

    /* access modifiers changed from: package-private */
    public b0 findViewHolderForPosition(int i2, boolean z2) {
        int h2 = this.mChildHelper.h();
        b0 b0Var = null;
        for (int i3 = 0; i3 < h2; i3++) {
            b0 childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i3));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved()) {
                if (z2) {
                    if (childViewHolderInt.mPosition != i2) {
                        continue;
                    }
                } else if (childViewHolderInt.getLayoutPosition() != i2) {
                    continue;
                }
                if (!this.mChildHelper.l(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                b0Var = childViewHolderInt;
            }
        }
        return b0Var;
    }

    /* access modifiers changed from: package-private */
    public void onExitLayoutOrScroll(boolean z2) {
        int i2 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i2;
        if (i2 < 1) {
            this.mLayoutOrScrollCounter = 0;
            if (z2) {
                dispatchContentChangedIfNecessary();
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator) {
        smoothScrollBy(i2, i3, interpolator, UNDEFINED_DURATION);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3;
        this.mObserver = new w();
        this.mRecycler = new u();
        this.mViewInfoStore = new d0();
        this.mUpdateChildViewsRunnable = new a();
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = new k();
        this.mItemAnimator = new e();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        boolean z2 = true;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new a0();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new m.b() : null;
        this.mState = new y();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new m();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new b();
        this.mViewInfoProcessCallback = new d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = g3.b(viewConfiguration, context);
        this.mScaledVerticalScrollFactor = g3.c(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.o(this.mItemAnimatorListener);
        initAdapterManager();
        initChildrenHelper();
        initAutofill();
        int i4 = c3.g;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new y(this));
        int[] iArr = R$styleable.a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 29) {
            i3 = i5;
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, i2, 0);
        } else {
            i3 = i5;
        }
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = obtainStyledAttributes.getBoolean(1, true);
        boolean z3 = obtainStyledAttributes.getBoolean(3, false);
        this.mEnableFastScroller = z3;
        if (z3) {
            initFastScroller((StateListDrawable) obtainStyledAttributes.getDrawable(6), obtainStyledAttributes.getDrawable(7), (StateListDrawable) obtainStyledAttributes.getDrawable(4), obtainStyledAttributes.getDrawable(5));
        }
        obtainStyledAttributes.recycle();
        createLayoutManager(context, string, attributeSet, i2, 0);
        if (i3 >= 21) {
            int[] iArr2 = NESTED_SCROLLING_ATTRS;
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i2, 0);
            if (i3 >= 29) {
                saveAttributeDataForStyleable(context, iArr2, attributeSet, obtainStyledAttributes2, i2, 0);
            }
            z2 = obtainStyledAttributes2.getBoolean(0, true);
            obtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z2);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().c(i2, i3, iArr, iArr2, i4);
    }

    public final void dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        getScrollingChildHelper().d(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    public boolean hasNestedScrollingParent(int i2) {
        return getScrollingChildHelper().i(i2);
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator, int i4) {
        smoothScrollBy(i2, i3, interpolator, i4, false);
    }

    public boolean startNestedScroll(int i2, int i3) {
        return getScrollingChildHelper().l(i2, i3);
    }

    public void stopNestedScroll(int i2) {
        getScrollingChildHelper().m(i2);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        b0 a;
        final Rect b = new Rect();
        boolean c = true;
        boolean d = false;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public int a() {
            return this.a.getLayoutPosition();
        }

        public boolean b() {
            return this.a.isUpdated();
        }

        public boolean c() {
            return this.a.isRemoved();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        Parcelable d;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readParcelable(classLoader == null ? o.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.d, 0);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        o oVar = this.mLayout;
        if (oVar != null) {
            return oVar.z(layoutParams);
        }
        StringBuilder q2 = ic.q("RecyclerView has no LayoutManager");
        q2.append(exceptionLabel());
        throw new IllegalStateException(q2.toString());
    }

    /* access modifiers changed from: package-private */
    public void smoothScrollBy(int i2, int i3, Interpolator interpolator, int i4, boolean z2) {
        o oVar = this.mLayout;
        if (oVar == null) {
            Log.e(TAG, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.mLayoutSuppressed) {
            int i5 = 0;
            if (!oVar.i()) {
                i2 = 0;
            }
            if (!this.mLayout.j()) {
                i3 = 0;
            }
            if (i2 != 0 || i3 != 0) {
                if (i4 == Integer.MIN_VALUE || i4 > 0) {
                    if (z2) {
                        if (i2 != 0) {
                            i5 = 1;
                        }
                        if (i3 != 0) {
                            i5 |= 2;
                        }
                        startNestedScroll(i5, 1);
                    }
                    this.mViewFlinger.c(i2, i3, i4, interpolator);
                    return;
                }
                scrollBy(i2, i3);
            }
        }
    }

    public void addItemDecoration(n nVar) {
        addItemDecoration(nVar, -1);
    }
}
