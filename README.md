# classDumpDemo
三种都实现以下效果，classDumpDemoForiOS和classDumpDemoForOSX都是我自己改的，核心代码来自class-dump。PrivateMethodGetClassForiOS是我发现的NSObject私有方法实现的，其私有方法来自UIKitCore的NSObject(IvarDescription)
````````
in UIViewController:
	Class Methods:
		+ (id) fallback_debugHierarchyChildGroupingID; (0x11025370a)
		+ (id) fallback_debugHierarchyObjectsInGroupWithID:(id)arg1 onObject:(id)arg2 outOptions:(id*)arg3; (0x110253781)
		+ (id) fallback_debugHierarchyAdditionalGroupingIDs; (0x110253729)
		+ (id) fallback_debugHierarchyValueForPropertyWithName:(id)arg1 onObject:(id)arg2 outOptions:(id*)arg3 outError:(id*)arg4; (0x1102549eb)
		+ (id) fallback_debugHierarchyPropertyDescriptions; (0x1102538a8)
		+ (BOOL) _initializedByViewServices; (0x113c9461c)
		+ (void) initialize; (0x113b60c7f)
		+ (id) XPCInterface; (0x1145791dd)
		+ (void) _performWithoutDeferringTransitions:(^block)arg1; (0x113b78375)
		+ (void) _sendPrepareForTapGesture:(id)arg1; (0x113b84d48)
		+ (double) _horizontalContentMarginForView:(id)arg1; (0x113b5f39f)
		+ (BOOL) _shouldDeferTransitions; (0x113b78369)
		+ (void) _scheduleTransition:(^block)arg1; (0x113b7840f)
		+ (id) _traitCollectionWithParentTraitCollection:(id)arg1 overrideTraitCollection:(id)arg2; (0x113b6648e)
		+ (BOOL) _preventsAppearanceProxyCustomization; (0x113b65868)
		+ (BOOL) doesOverrideViewControllerMethod:(SEL)arg1 inBaseClass:(Class)arg2; (0x113b60e96)
		+ (double) durationForTransition:(int)arg1; (0x113b83ab8)
		+ (BOOL) _directlySetsContentOverlayInsetsForChildren; (0x113b5c3d8)
		+ (BOOL) _doesOverrideLegacyShouldAutorotateMethod; (0x113b864e4)
		+ (BOOL) doesOverridePreferredInterfaceOrientationForPresentation; (0x113b60f14)
		+ (BOOL) doesOverrideSupportedInterfaceOrientations; (0x113b60f8a)
		+ (BOOL) _shouldSendLegacyMethodsFromViewWillTransitionToSize; (0x113b83e0d)
		+ (int) _keyboardDirectionForTransition:(int)arg1; (0x113b6b149)
		+ (double) customTransitionDuration; (0x113b83a7a)
		+ (id) _printHierarchy; (0x113b72651)
		+ (BOOL) doesOverrideViewControllerMethod:(SEL)arg1; (0x113b60ecd)
		+ (void) _withDisabledAppearanceTransitionsForVisibleDescendantsOf:(id)arg1 perform:(^block)arg2; (0x113b6f1da)
		+ (void) _withDisabledAppearanceTransitions:(BOOL)arg1 forDescendantsOf:(id)arg2 visibleOnly:(BOOL)arg3 perform:(^block)arg4; (0x113b6f22a)
		+ (double) _slimHorizontalContentMargin; (0x113b5f530)
		+ (struct CGSize) defaultFormSheetSize; (0x113b61322)
		+ (BOOL) _isNestedViewControllerSupportDisabled; (0x113b60e2c)
		+ (BOOL) _synthesizeSupportedInterfaceOrientationsFromShouldAutorotateToInterfaceOrientation; (0x113b62407)
		+ (void) setViewController:(id)arg1 forView:(id)arg2; (0x113b7148d)
		+ (id) existingNibNameMatchingClassName:(id)arg1 bundle:(id)arg2; (0x113b675d7)
		+ (BOOL) _doesOverrideLegacyFullScreenLayout; (0x113b736a7)
		+ (BOOL) _isViewSizeFullScreen:(id)arg1 inWindow:(id)arg2 ignoreInWindowCheck:(BOOL)arg3; (0x113b736af)
		+ (BOOL) _shouldUseLegacyUnwindDestinationSearch; (0x113b6b576)
		+ (BOOL) _shouldUseRootViewControllerAutopromotion; (0x113b60cde)
		+ (void) _traverseViewControllerHierarchyWithDelayedRelease:(^block)arg1; (0x113b71886)
		+ (void) _traverseViewControllerHierarchy:(^block)arg1; (0x113b71c7d)
		+ (id) _safeAreaInsetsTrace; (0x113b726d2)
		+ (BOOL) _shouldUseLegacyModalViewControllers; (0x113b60e61)
		+ (BOOL) _isViewSizeFullScreen:(id)arg1 inWindow:(id)arg2; (0x113b74816)
		+ (void) _setShouldDeferTransitions:(BOOL)arg1; (0x113b7835d)
		+ (id) _viewControllerForFullScreenPresentationFromView:(id)arg1; (0x113b8334b)
		+ (BOOL) _shouldForwardViewWillTransitionToSize; (0x113b84894)
		+ (void) _forceLegacyModalViewControllers:(BOOL)arg1; (0x113b60e14)
		+ (void) _disableNestedViewControllerSupport:(BOOL)arg1; (0x113b60e20)
		+ (id) _currentUserInterfaceStyleViewController; (0x113b66a6f)
		+ (void) removeViewControllerForView:(id)arg1; (0x113b71432)
		+ (id) _allDescriptions; (0x113b71f9a)
		+ (void) _setShouldUseLegacyPresentations:(BOOL)arg1; (0x113b78357)
		+ (void) setCustomTransitionDuration:(double)arg1; (0x113b83a6c)
		+ (void) attemptRotationToDeviceOrientation; (0x113b864fd)
		+ (BOOL) _allViewControllersInArray:(id)arg1 allowAutorotationToInterfaceOrientation:(long)arg2 predicate:(^block)arg3; (0x113b875ef)
		+ (id) _currentStatusBarStyleViewController; (0x113b8b19f)
		+ (id) _currentStatusBarHiddenViewController; (0x113b8b223)
		+ (id) _currentWhitePointAdaptivityStyleViewController; (0x113b8b749)
		+ (id) _currentScreenEdgesDeferringSystemGesturesViewController; (0x113b8b99f)
		+ (id) _currentHomeIndicatorAutoHiddenViewController; (0x113b8bbe3)
		+ (id) _exportedInterface; (0x114578fd1)
		+ (id) _remoteViewControllerInterface; (0x114578fc9)
		+ (BOOL) _isSecureForRemoteViewService; (0x114578ee8)
		+ (id) viewControllerForView:(id)arg1; (0x113b7141d)
	Properties:
		@property (readonly) unsigned long hash;
		@property (readonly) Class superclass;
		@property (readonly, copy) NSString* description;
		@property (readonly, copy) NSString* debugDescription;
		@property (readonly) unsigned long hash;
		@property (readonly) Class superclass;
		@property (readonly, copy) NSString* description;
		@property (readonly, copy) NSString* debugDescription;
		@property (readonly, nonatomic) BOOL ab_shouldShowNavBarButtons;
		@property (readonly, nonatomic) BOOL ab_shouldUseTransparentBackgroundInPopovers;
		@property (readonly, nonatomic) BOOL ab_isInPopover;
		@property (readonly, nonatomic) BOOL ab_isDirectlyInPopover;
		@property (readonly, nonatomic) BOOL ab_isInSheet;
		@property (readonly, nonatomic) _UIActionSheetPresentationController* actionSheetPresentationController;
		@property (readonly, nonatomic) UIMultiColumnViewController* _multiColumnViewController;
		@property (retain, nonatomic) UITabBarItem* tabBarItem;
		@property (readonly, nonatomic) UITabBarController* tabBarController;
		@property (readonly, nonatomic) UISplitViewController* splitViewController;
		@property (readonly, nonatomic) UINavigationItem* navigationItem;
		@property (nonatomic) BOOL hidesBottomBarWhenPushed;
		@property (readonly, nonatomic) UINavigationController* navigationController;
		@property (readonly, nonatomic) NSArray* childViewControllers;
		@property (readonly, nonatomic) UIViewController* childViewControllerForStatusBarStyle;
		@property (readonly, nonatomic) UIViewController* childViewControllerForStatusBarHidden;
		@property (readonly, nonatomic) UIViewController* childViewControllerForUserInterfaceStyle;
		@property (readonly, nonatomic) BOOL shouldAutomaticallyForwardAppearanceMethods;
		@property (readonly, nonatomic) UIView* _embeddedView;  (@dynamic _embeddedView;)
		@property (readonly, nonatomic) <_UIViewControllerContentViewEmbedding>* _embeddedDelegate;  (@dynamic _embeddedDelegate;)
		@property (weak, nonatomic) <UIViewControllerTransitioningDelegate>* transitioningDelegate;
		@property (readonly, nonatomic) NSArray* _preferredContentSizes;
		@property (readonly, nonatomic) NSExtensionContext* extensionContext;  (@dynamic extensionContext;)
		@property (readonly) unsigned long hash;
		@property (readonly) Class superclass;
		@property (readonly, copy) NSString* description;
		@property (readonly, copy) NSString* debugDescription;
		@property (readonly) unsigned long hash;
		@property (readonly) Class superclass;
		@property (readonly, copy) NSString* description;
		@property (readonly, copy) NSString* debugDescription;
		@property (retain, nonatomic, setter=_setChildControllerToIgnoreWhileLookingForTransitionCoordinator:) UIViewController* _childControllerToIgnoreWhileLookingForTransitionCoordinator;  (@synthesize _childControllerToIgnoreWhileLookingForTransitionCoordinator = __childControllerToIgnoreWhileLookingForTransitionCoordinator;)
		@property (weak, nonatomic, getter=_presentingFocusedItem, setter=_setPresentingFocusedItem:) <UIFocusItem>* presentingFocusedItem;  (@synthesize presentingFocusedItem = _presentingFocusedItem;)
		@property (retain, nonatomic) UINavigationContentAdjustments* navigationInsetAdjustment;  (@synthesize navigationInsetAdjustment = _navigationInsetAdjustment;)
		@property (nonatomic, getter=_overrideUseCustomPresentation, setter=_setOverrideUseCustomPresentation:) BOOL overrideUseCustomPresentation;  (@synthesize overrideUseCustomPresentation = overrideUseCustomPresentation;)
		@property (retain, nonatomic, getter=_overrideTransitioningDelegate, setter=_setOverrideTransitioningDelegate:) <UIViewControllerTransitioningDelegate>* overrideTransitioningDelegate;  (@dynamic overrideTransitioningDelegate;)
		@property (nonatomic) struct UIEdgeInsets additionalSafeAreaInsets;  (@synthesize additionalSafeAreaInsets = _additionalSafeAreaInsets;)
		@property (retain, nonatomic, setter=_setExpectedWindow:) UIWindow* _expectedWindow;  (@synthesize _expectedWindow = _expectedWindow;)
		@property (copy, nonatomic) NSString* nibName;  (@synthesize nibName = _nibName;)
		@property (retain, nonatomic) NSBundle* nibBundle;  (@synthesize nibBundle = _nibBundle;)
		@property (retain, nonatomic, setter=_setStoryboard:) UIStoryboard* storyboard;  (@synthesize storyboard = _storyboard;)
		@property (readonly, nonatomic) NSArray* storyboardSegueTemplates;  (@synthesize storyboardSegueTemplates = _storyboardSegueTemplates;)
		@property (readonly, nonatomic) NSArray* storyboardPreviewSegueTemplates;  (@synthesize storyboardPreviewSegueTemplates = _storyboardPreviewSegueTemplates;)
		@property (readonly, nonatomic) NSArray* storyboardCommitSegueTemplates;  (@synthesize storyboardCommitSegueTemplates = _storyboardCommitSegueTemplates;)
		@property (readonly, nonatomic) NSArray* storyboardPreviewingRegistrants;  (@synthesize storyboardPreviewingRegistrants = _storyboardPreviewingRegistrants;)
		@property (retain, nonatomic, setter=_setSegueResponsibleForModalPresentation:) UIStoryboardSegue* _segueResponsibleForModalPresentation;  (@synthesize _segueResponsibleForModalPresentation = _segueResponsibleForModalPresentation;)
		@property (nonatomic, setter=_setSourceViewControllerIfPresentedViaPopoverSegue:) UIViewController* _sourceViewControllerIfPresentedViaPopoverSegue;  (@synthesize _sourceViewControllerIfPresentedViaPopoverSegue = _sourceViewControllerIfPresentedViaPopoverSegue;)
		@property (nonatomic, setter=_setModalSourceViewController:) UIViewController* _modalSourceViewController;  (@synthesize _modalSourceViewController = _modalSourceViewController;)
		@property (retain, nonatomic) UITransitionView* modalTransitionView;
		@property (weak, nonatomic) UIViewController* parentViewController;
		@property (readonly, nonatomic) UIViewController* _parentViewController;
		@property (readonly, nonatomic) UIViewController* _parentModalViewController;
		@property (retain, nonatomic) NSMutableArray* mutableChildViewControllers;  (@synthesize mutableChildViewControllers = _childViewControllers;)
		@property (readonly, nonatomic) unsigned long childViewControllersCount;
		@property (readonly, nonatomic) BOOL _transitionsChildViewControllers;
		@property (retain, nonatomic, setter=_setEmbeddedView:) UIView* _embeddedView;  (@synthesize _embeddedView = __embeddedView;)
		@property (retain, nonatomic, setter=_setEmbeddingView:) UIView* _embeddingView;  (@synthesize _embeddingView = __embeddingView;)
		@property (nonatomic, setter=_setEmbeddedViewFrame:) struct CGRect _embeddedViewFrame;  (@synthesize _embeddedViewFrame = __embeddedViewFrame;)
		@property (nonatomic, setter=_setEmbeddedDelegate:) <_UIViewControllerContentViewEmbedding>* _embeddedDelegate;  (@synthesize _embeddedDelegate = __embeddedDelegate;)
		@property (readonly, nonatomic) BOOL _viewHostsLayoutEngineAllowsTAMIC_NO;
		@property (readonly, nonatomic) BOOL _navControllerIsLayingOutTopViewController;
		@property (retain, nonatomic, setter=_setLastNotifiedTraitCollection:) UITraitCollection* _lastNotifiedTraitCollection;  (@synthesize _lastNotifiedTraitCollection = _lastNotifiedTraitCollection;)
		@property (readonly, nonatomic) long _horizontalSizeClass;
		@property (readonly, nonatomic) long _verticalSizeClass;
		@property (readonly, nonatomic) struct ? __sizeClassPair;
		@property (copy, nonatomic) UITraitCollection* overrideTraitCollection;  (@synthesize overrideTraitCollection = _overrideTraitCollection;)
		@property (readonly, nonatomic) UIView* savedHeaderSuperview;  (@synthesize savedHeaderSuperview = _savedHeaderSuperview;)
		@property (retain, nonatomic) UIViewController* childModalViewController;
		@property (weak, nonatomic) UIViewController* parentModalViewController;  (@synthesize parentModalViewController = _parentModalViewController;)
		@property (retain, nonatomic) UISearchDisplayController* searchDisplayController;  (@dynamic searchDisplayController;)
		@property (nonatomic) BOOL searchBarHidNavBar;
		@property (retain, nonatomic) UIDropShadowView* dropShadowView;  (@synthesize dropShadowView = _dropShadowView;)
		@property (readonly, nonatomic) BOOL _isModalSheet;
		@property (readonly, nonatomic) BOOL _isPresentedFormSheet;
		@property (readonly, nonatomic) BOOL _isInSheetPresentation;
		@property (retain, nonatomic, setter=_setPresentationController:) UIPresentationController* _presentationController;  (@synthesize _presentationController = _presentationController;)
		@property (nonatomic, getter=_presentationSizeClassPair, setter=_setPresentationSizeClassPair:) struct ? presentationSizeClassPair;  (@synthesize presentationSizeClassPair = _presentationSizeClassPair;)
		@property (retain, nonatomic, getter=_originalPresentationController, setter=_setOriginalPresentationController:) UIPresentationController* originalPresentationController;  (@synthesize originalPresentationController = _originalPresentationController;)
		@property (retain, nonatomic, getter=_temporaryPresentationController, setter=_setTemporaryPresentationController:) UIPresentationController* temporaryPresentationController;  (@synthesize temporaryPresentationController = _temporaryPresentationController;)
		@property (readonly, nonatomic) BOOL _useSheetRotation;
		@property (readonly, nonatomic) BOOL _isDimmingBackground;
		@property (readonly, nonatomic) BOOL isSettingAppearState;
		@property (copy, nonatomic) ^block afterAppearanceBlock;  (@synthesize afterAppearanceBlock = _afterAppearance;)
		@property (nonatomic) struct CGSize contentSizeForViewInPopover;  (@synthesize contentSizeForViewInPopover = _contentSizeForViewInPopover;)
		@property (nonatomic) BOOL modalInPopover;
		@property (nonatomic, getter=isInWillRotateCallback) BOOL inWillRotateCallback;
		@property (nonatomic, getter=isInAnimatedVCTransition) BOOL inAnimatedVCTransition;
		@property (readonly, nonatomic) BOOL inExplicitAppearanceTransition;
		@property (nonatomic) BOOL appearanceTransitionsAreDisabled;
		@property (nonatomic) BOOL disableRootPromotion;
		@property (nonatomic) BOOL needsDidMoveCleanup;
		@property (nonatomic, getter=isFinishingModalTransition) BOOL finishingModalTransition;
		@property (nonatomic) double customNavigationInteractiveTransitionDuration;  (@synthesize customNavigationInteractiveTransitionDuration = _customNavigationInteractiveTransitionDuration;)
		@property (nonatomic) double customNavigationInteractiveTransitionPercentComplete;  (@synthesize customNavigationInteractiveTransitionPercentComplete = _customNavigationInteractiveTransitionPercentComplete;)
		@property (retain, nonatomic) UITransitionView* customTransitioningView;  (@synthesize customTransitioningView = _customTransitioningView;)
		@property (readonly, nonatomic, getter=_window) UIWindow* window;
		@property (readonly, nonatomic) BOOL _monitorsSystemLayoutFittingSize;
		@property (retain, nonatomic, setter=_setPreviousFittingSizeInfo:) NSDictionary* _previousFittingSizeInfo;
		@property (weak, nonatomic) UIView* preferredFocusedItem;  (@synthesize preferredFocusedItem = _preferredFocusedItem;)
		@property (weak, nonatomic) UIView* preferredFocusedView;
		@property (nonatomic, setter=_setNavigationControllerContentInsetAdjustment:) struct UIEdgeInsets _navigationControllerContentInsetAdjustment;  (@dynamic _navigationControllerContentInsetAdjustment;)
		@property (nonatomic, setter=_setNavigationControllerContentOffsetAdjustment:) double _navigationControllerContentOffsetAdjustment;  (@synthesize _navigationControllerContentOffsetAdjustment = _navigationControllerContentOffsetAdjustment;)
		@property (nonatomic, setter=_setContentOverlayInsets:) struct UIEdgeInsets _contentOverlayInsets;  (@synthesize _contentOverlayInsets = _contentOverlayInsets;)
		@property (nonatomic, setter=_setContentMargin:) double _contentMargin;  (@synthesize _contentMargin = _contentMargin;)
		@property (nonatomic, setter=_setLeftContentMargin:) double _leftContentMargin;  (@synthesize _leftContentMargin = _leftContentMargin;)
		@property (nonatomic, setter=_setRightContentMargin:) double _rightContentMargin;  (@synthesize _rightContentMargin = _rightContentMargin;)
		@property (retain, nonatomic, setter=_setPresentedStatusBarViewController:) UIViewController* _presentedStatusBarViewController;  (@synthesize _presentedStatusBarViewController = _presentedStatusBarViewController;)
		@property (retain, nonatomic, setter=_setPresentedUserInterfaceStyleViewController:) UIViewController* _presentedUserInterfaceStyleViewController;  (@synthesize _presentedUserInterfaceStyleViewController = _presentedUserInterfaceStyleViewController;)
		@property (readonly, retain, nonatomic) <UILayoutSupport><_UILayoutItem>* topLayoutGuide;  (@synthesize topLayoutGuide = _topLayoutGuide;)
		@property (readonly, retain, nonatomic) <UILayoutSupport><_UILayoutItem>* bottomLayoutGuide;  (@synthesize bottomLayoutGuide = _bottomLayoutGuide;)
		@property (readonly, retain, nonatomic) NSLayoutConstraint* _topBarInsetGuideConstraint;  (@synthesize _topBarInsetGuideConstraint = _topBarInsetGuideConstraint;)
		@property (readonly, retain, nonatomic) NSLayoutConstraint* _bottomBarInsetGuideConstraint;  (@synthesize _bottomBarInsetGuideConstraint = _bottomBarInsetGuideConstraint;)
		@property (readonly, nonatomic) struct NSDirectionalEdgeInsets systemMinimumLayoutMargins;  (@synthesize systemMinimumLayoutMargins = _systemMinimumLayoutMargins;)
		@property (readonly, nonatomic) struct UIEdgeInsets _viewSafeAreaInsetsFromScene;
		@property (nonatomic) BOOL ignoresParentMargins;  (@synthesize ignoresParentMargins = _ignoresParentMargins;)
		@property (retain, nonatomic, setter=_setExtensionContextUUID:) NSUUID* extensionContextUUID;  (@dynamic extensionContextUUID;)
		@property (readonly, nonatomic) NSArray* previewActionItems;
		@property (retain, nonatomic) UIView* view;
		@property (readonly, nonatomic) UIView* viewIfLoaded;
		@property (readonly, nonatomic, getter=isViewLoaded) BOOL viewLoaded;
		@property (copy, nonatomic) NSString* title;  (@synthesize title = _title;)
		@property (readonly, nonatomic) UIViewController* modalViewController;
		@property (readonly, nonatomic) UIViewController* presentedViewController;
		@property (readonly, nonatomic) UIViewController* presentingViewController;
		@property (nonatomic) BOOL definesPresentationContext;
		@property (nonatomic) BOOL providesPresentationContextTransitionStyle;
		@property (nonatomic) BOOL restoresFocusAfterTransition;
		@property (readonly, nonatomic, getter=isBeingPresented) BOOL beingPresented;
		@property (readonly, nonatomic, getter=isBeingDismissed) BOOL beingDismissed;
		@property (readonly, nonatomic, getter=isMovingToParentViewController) BOOL movingToParentViewController;
		@property (readonly, nonatomic, getter=isMovingFromParentViewController) BOOL movingFromParentViewController;
		@property (nonatomic) long modalTransitionStyle;  (@synthesize modalTransitionStyle = _modalTransitionStyle;)
		@property (nonatomic) long modalPresentationStyle;  (@synthesize modalPresentationStyle = _modalPresentationStyle;)
		@property (nonatomic) BOOL modalPresentationCapturesStatusBarAppearance;  (@synthesize modalPresentationCapturesStatusBarAppearance = _modalPresentationCapturesStatusBarAppearance;)
		@property (readonly, nonatomic) BOOL disablesAutomaticKeyboardDismissal;
		@property (nonatomic) BOOL wantsFullScreenLayout;
		@property (nonatomic) unsigned long edgesForExtendedLayout;  (@synthesize edgesForExtendedLayout = _edgesForExtendedLayout;)
		@property (nonatomic) BOOL extendedLayoutIncludesOpaqueBars;
		@property (nonatomic) BOOL automaticallyAdjustsScrollViewInsets;
		@property (nonatomic) struct CGSize preferredContentSize;  (@synthesize preferredContentSize = _preferredContentSize;)
		@property (readonly, nonatomic) long preferredStatusBarStyle;
		@property (readonly, nonatomic) BOOL prefersStatusBarHidden;
		@property (readonly, nonatomic) long preferredStatusBarUpdateAnimation;
		@property (readonly, nonatomic) long preferredUserInterfaceStyle;
		@property (readonly) unsigned long hash;
		@property (readonly) Class superclass;
		@property (readonly, copy) NSString* description;
		@property (readonly, copy) NSString* debugDescription;
		@property (readonly, nonatomic) UITraitCollection* traitCollection;
		@property (readonly, copy, nonatomic) NSArray* preferredFocusEnvironments;
		@property (readonly, weak, nonatomic) <UIFocusEnvironment>* parentFocusEnvironment;
		@property (readonly, nonatomic) <UIFocusItemContainer>* focusItemContainer;
		@property (readonly, nonatomic, getter=_isEligibleForFocusInteraction) BOOL eligibleForFocusInteraction;
		@property (readonly, nonatomic, getter=_preferredFocusMovementStyle) long preferredFocusMovementStyle;
		@property (readonly, copy, nonatomic, getter=_linearFocusMovementSequences) NSArray* linearFocusMovementSequences;
		@property (readonly, weak, nonatomic, getter=_focusMapContainer) <_UIFocusRegionContainer>* focusMapContainer;
	Instance Methods:
		- (void) infoCardThemeChanged:(id)arg1; (0x124043c03)
		- (void) cnui_addChildViewController:(id)arg1; (0x1249b2ed8)
		- (BOOL) ab_shouldShowNavBarButtons; (0x1249b2ac7)
		- (BOOL) ab_shouldUseTransparentBackgroundInPopovers; (0x1249b2b63)
		- (BOOL) ab_isInSheet; (0x1249b2dc5)
		- (BOOL) ab_isInPopover; (0x1249b2d9a)
		- (BOOL) _ab_isInPopoverRecursive:(BOOL)arg1; (0x1249b2bf9)
		- (BOOL) ab_isDirectlyInPopover; (0x1249b2db1)
		- (void) set_cardViewControllerTransitioning:(id)arg1; (0x1249b2a59)
		- (id) _cardViewControllerTransitioning; (0x1249b2a6f)
		- (id) _doc_tagChainTitleViewForTags:(id)arg1; (0x113650248)
		- (id) _doc_defaultTitleTextAttributes; (0x11365063d)
		- (^block) _completionBlock; (0x113b74f3f)
		- (id) title; (0x113b6c22a)
		- (void) setTitle:(id)arg1; (0x113b6c24f)
		- (void) beginRequestWithExtensionContext:(id)arg1; (0x113c9474e)
		- (void) .cxx_destruct; (0x113b8daaa)
		- (id) retain; (0x113b99b53)
		- (oneway void) release; (0x113b99b79)
		- (id) autorelease; (0x113b99c77)
		- (unsigned long) retainCount; (0x113b99bf5)
		- (void) dealloc; (0x113b6452b)
		- (BOOL) _tryRetain; (0x113b99c10)
		- (BOOL) _isDeallocating; (0x113b99c4e)
		- (id) invalidate; (0x1145790a2)
		- (void) setValue:(id)arg1 forKey:(id)arg2; (0x113b6023b)
		- (void) encodeWithCoder:(id)arg1; (0x113b63e15)
		- (id) initWithCoder:(id)arg1; (0x113b62f65)
		- (id) init; (0x113b62f16)
		- (void) _dismissAccessibilityHUD; (0x113b91a8c)
		- (void) _showAccessibilityHUDItem:(id)arg1; (0x113b916d3)
		- (id) _window; (0x113b6d7b3)
		- (BOOL) _isInContextOfPresentationControllerOfClass:(Class)arg1 effective:(BOOL)arg2; (0x113b82ce5)
		- (id) _popoverController; (0x113b751e5)
		- (id) transitionCoordinator; (0x113b78345)
		- (BOOL) isBeingPresented; (0x113b8c5be)
		- (BOOL) isBeingDismissed; (0x113b8c603)
		- (id) initWithNibName:(id)arg1 bundle:(id)arg2; (0x113b62df3)
		- (struct CGSize) preferredContentSize; (0x113b619e5)
		- (id) traitCollection; (0x113b66239)
		- (id) _screen; (0x113b8be1f)
		- (void) setNeedsFocusUpdate; (0x113b8d23c)
		- (void) traitCollectionDidChange:(id)arg1; (0x113b66591)
		- (id) preferredFocusedView; (0x113b8d139)
		- (void) willTransitionToTraitCollection:(id)arg1 withTransitionCoordinator:(id)arg2; (0x113b65cfd)
		- (void) viewWillAppear:(BOOL)arg1; (0x113b6eb29)
		- (void) viewWillDisappear:(BOOL)arg1; (0x113b6ecc5)
		- (void) didUpdateFocusInContext:(id)arg1 withAnimationCoordinator:(id)arg2; (0x113b8d3cb)
		- (void) updateFocusIfNeeded; (0x113b8d292)
		- (BOOL) shouldUpdateFocusInContext:(id)arg1; (0x113b8d2dc)
		- (id) preferredFocusEnvironments; (0x113b8d19b)
		- (id) parentFocusEnvironment; (0x113b8d00b)
		- (id) focusItemContainer; (0x113b8d0e4)
		- (void) viewDidLoad; (0x113b67e9c)
		- (void) viewWillLayoutSubviews; (0x113b6f6a6)
		- (id) _presentationControllerClassName; (0x113b5be6c)
		- (void) preferredContentSizeDidChangeForChildContentContainer:(id)arg1; (0x113b61a3b)
		- (id) _transitionCoordinator; (0x113b77ab8)
		- (void) viewWillTransitionToSize:(struct CGSize)arg1 withTransitionCoordinator:(id)arg2; (0x113b83e3b)
		- (void) willMoveToParentViewController:(id)arg1; (0x113b8f547)
		- (void) didMoveToParentViewController:(id)arg1; (0x113b8f5a9)
		- (id) parentViewController; (0x113b6cf91)
		- (id) _visualStyleOfContainingAlertController; (0x11384a0f4)
		- (void) _containingAlertControllerDidChangeVisualStyle:(id)arg1; (0x11384a16d)
		- (void) setTransitioningDelegate:(id)arg1; (0x113b90c9b)
		- (void) addKeyCommand:(id)arg1; (0x113b91443)
		- (void) removeKeyCommand:(id)arg1; (0x113b914ed)
		- (BOOL) canPerformAction:(SEL)arg1 withSender:(id)arg2; (0x113b84cf0)
		- (unsigned long) supportedInterfaceOrientations; (0x113b867f3)
		- (BOOL) _isSupportedInterfaceOrientation:(long)arg1; (0x113b877f0)
		- (BOOL) isViewLoaded; (0x113b6906d)
		- (BOOL) _isInPopoverPresentation; (0x113b82df9)
		- (void) setContentSizeForViewInPopover:(struct CGSize)arg1; (0x113b613b0)
		- (void) viewDidLayoutSubviews; (0x113b6f6ac)
		- (id) _requiredNotificationsForRemoteServices; (0x113b700d0)
		- (id) _existingView; (0x113b69082)
		- (BOOL) _ancestorViewControllerIsInPopover; (0x113b752fb)
		- (id) _existingPresentationControllerImmediate:(BOOL)arg1 effective:(BOOL)arg2; (0x113b82c6f)
		- (void) viewDidAppear:(BOOL)arg1; (0x113b6ebf7)
		- (void) viewDidDisappear:(BOOL)arg1; (0x113b6ed5f)
		- (id) presentationController; (0x113b828c0)
		- (BOOL) shouldAutorotate; (0x113b866a1)
		- (void) _getRotationContentSettings:(struct ?*)arg1; (0x113b890c9)
		- (id) _presentationControllerForPresentedController:(id)arg1 presentingController:(id)arg2 sourceController:(id)arg3; (0x113b775d4)
		- (BOOL) _requiresCustomPresentationController; (0x113b7a9d2)
		- (id) _parentModalViewController; (0x113b6cf78)
		- (id) transitioningDelegate; (0x113b90c42)
		- (id) safeAreaLayoutGuide; (0x113b609a5)
		- (id) _barBackdropGroupNameForAncestorViewController:(id*)arg1; (0x113b6c3e7)
		- (id) _appearanceGuideClass; (0x113b65860)
		- (double) _contentMargin; (0x113b8d607)
		- (BOOL) _freezeLayoutForOrientationChangeOnDismissal; (0x113b6a87f)
		- (id) navigationItem; (0x113b8e1e6)
		- (id) navigationController; (0x113b8e758)
		- (BOOL) _viewControllerUnderlapsStatusBar; (0x113b739d7)
		- (double) _statusBarHeightForCurrentInterfaceOrientation; (0x113b67b94)
		- (void) _updateLayoutForStatusBarAndInterfaceOrientation; (0x113b6a940)
		- (void) applicationDidResume; (0x113b73538)
		- (void) applicationWillSuspend; (0x113b733c3)
		- (double) _canvasSystemMinimumMargin; (0x113b5f2d0)
		- (void) awakeFromNib; (0x113b63c2a)
		- (void) setEditing:(BOOL)arg1; (0x113b8e59e)
		- (void) setEditing:(BOOL)arg1 animated:(BOOL)arg2; (0x113b8e5b2)
		- (id) viewIfLoaded; (0x113b6802d)
		- (BOOL) _isInViewControllerThatHandlesKeyboardAvoidance; (0x113b9166c)
		- (void) _keyboardWillShow:(id)arg1; (0x113b764dd)
		- (void) _keyboardWillHide:(id)arg1; (0x113b76b2d)
		- (void) encodeRestorableStateWithCoder:(id)arg1; (0x113b8f74d)
		- (void) _didUpdateFocusInContext:(id)arg1 withAnimationCoordinator:(id)arg2; (0x113b8d2e4)
		- (id) _parentFocusEnvironment; (0x113b8cff9)
		- (void) _setNeedsNonDeferredFocusUpdate; (0x113b8d3d1)
		- (struct UIEdgeInsets) _contentOverlayInsets; (0x113b8d55d)
		- (void) _updateContentOverlayInsetsFromParentIfNecessary; (0x113b5d722)
		- (id) actionSheetPresentationController; (0x113a72801)
		- (BOOL) _providesCustomBasePresentationInsets; (0x113b5d6ec)
		- (struct UIEdgeInsets) _customBasePresentationInsetsForView:(id)arg1; (0x113b5d6f4)
		- (void) setOverrideTraitCollection:(id)arg1; (0x113b66771)
		- (void) _presentViewController:(id)arg1 modalSourceViewController:(id)arg2 presentationController:(id)arg3 animationController:(id)arg4 interactionController:(id)arg5 completion:(^block)arg6; (0x113b79b1c)
		- (struct CGSize) _resolvedPreferredContentSize; (0x113afcd31)
		- (id) _viewForContentInPopover; (0x113b61d8f)
		- (void) setParentViewController:(id)arg1; (0x113b6d008)
		- (void) _setNavigationControllerContentInsetAdjustment:(struct UIEdgeInsets)arg1; (0x113b5bfae)
		- (void) setPerformingModalTransition:(BOOL)arg1; (0x113b74cef)
		- (BOOL) _optsOutOfPopoverControllerHierarchyCheck; (0x113b75148)
		- (id) childModalViewController; (0x113b74dd5)
		- (void) _replaceViewControllerInPresentationHierarchy:(id)arg1; (0x113b7a807)
		- (void) _clearCachedPopoverContentSize; (0x113b82a2c)
		- (void) systemLayoutFittingSizeDidChangeForChildContentContainer:(id)arg1; (0x113b61a5b)
		- (BOOL) _containsFirstResponder; (0x113b6b1f8)
		- (id) _presentationController; (0x113b8d508)
		- (void) _didCancelPresentTransition:(id)arg1; (0x113b82318)
		- (void) _didCancelDismissTransition:(id)arg1; (0x113b827da)
		- (void) setInAnimatedVCTransition:(BOOL)arg1; (0x113b6e16c)
		- (void) setFinishingModalTransition:(BOOL)arg1; (0x113b74d24)
		- (void) endAppearanceTransition; (0x113b8f15f)
		- (void) setAppearanceTransitionsAreDisabled:(BOOL)arg1; (0x113b6ef33)
		- (void) cancelBeginAppearanceTransition; (0x113b8f173)
		- (void) _presentingViewControllerDidChange:(id)arg1; (0x113b8f51f)
		- (id) _modalPreservedFirstResponder; (0x113b69097)
		- (void) _presentingViewControllerWillChange:(id)arg1; (0x113b8f4eb)
		- (void) setChildModalViewController:(id)arg1; (0x113b74dea)
		- (BOOL) definesPresentationContext; (0x113b831cc)
		- (void) beginAppearanceTransition:(BOOL)arg1 animated:(BOOL)arg2; (0x113b8f0a9)
		- (struct CGRect) _viewFrameInWindowForContentOverlayInsetsCalculation; (0x113b6043d)
		- (struct UIEdgeInsets) _viewSafeAreaInsetsFromScene; (0x113b60695)
		- (id) _rootAncestorViewController; (0x113b6d1b6)
		- (id) splitViewController; (0x113b8e103)
		- (void) _setPreviousRootViewController:(id)arg1; (0x113b6df20)
		- (id) _previousRootViewController; (0x113b6df07)
		- (void) _restoreInputViewsForPresentation; (0x113b8099f)
		- (void) _setExpectedWindow:(id)arg1; (0x113b8d753)
		- (int) _preferredStatusBarVisibility; (0x113b8afc6)
		- (long) modalPresentationStyle; (0x113b8d7db)
		- (struct CGSize) sizeForChildContentContainer:(id)arg1 withParentContainerSize:(struct CGSize)arg2; (0x113b8488e)
		- (struct ?) __sizeClassPair; (0x113b8ca5d)
		- (void) _updateTraitsIfNecessary; (0x113b66619)
		- (id) _parentTraitEnvironment; (0x113b660d6)
		- (id) overrideTraitCollection; (0x113b8d9e8)
		- (void) _parent:(id)arg1 willTransitionToTraitCollection:(id)arg2 withTransitionCoordinator:(id)arg3; (0x113b65870)
		- (void) _window:(id)arg1 willTransitionToTraitCollection:(id)arg2 withTransitionCoordinator:(id)arg3; (0x113b65b12)
		- (id) _adaptedPresentationControllerForTraitCollection:(id)arg1 withTransitionCoordinator:(id)arg2; (0x113b7a400)
		- (BOOL) isModalInPopover; (0x113b61d49)
		- (id) _appearanceContainer; (0x113b65797)
		- (id) _traitCollectionForChildEnvironment:(id)arg1; (0x113b6638e)
		- (BOOL) _monitorsSystemLayoutFittingSize; (0x113b60c42)
		- (void) _systemLayoutFittingSizeDidChangeForChildContentContainer:(id)arg1 childViewController:(id)arg2; (0x113b61a61)
		- (id) _focusMapContainer; (0x113b8d0d2)
		- (id) _lastNotifiedTraitCollection; (0x113b8d4e3)
		- (BOOL) _shouldIgnoreTouchesForModalFormSheet; (0x113b83a4b)
		- (id) _backgroundColorForModalFormSheet; (0x113b83a53)
		- (void) setDropShadowView:(id)arg1; (0x113b8d778)
		- (BOOL) disablesAutomaticKeyboardDismissal; (0x113b839fe)
		- (BOOL) _formSheetObeysContentContainerSize; (0x113b60fd5)
		- (struct CGSize) _formSheetSizeForWindowWithSize:(struct CGSize)arg1; (0x113b60ff5)
		- (id) dropShadowView; (0x113b8d767)
		- (BOOL) __withSupportedInterfaceOrientation:(long)arg1 apply:(^block)arg2; (0x113b87781)
		- (long) _preferredInterfaceOrientationForPresentationInWindow:(id)arg1 fromInterfaceOrientation:(long)arg2; (0x113b869c6)
		- (void) _setFreezeLayoutForOrientationChangeOnDismissal:(BOOL)arg1; (0x113b6a838)
		- (void) _willBeginCounterRotationForPresentation; (0x113b8abf7)
		- (BOOL) _handlesCounterRotationForPresentation; (0x113b8abef)
		- (void) _didEndCounterRotationForPresentation; (0x113b8ac76)
		- (id) tabBarController; (0x113b8dff2)
		- (void) _willChangeToIdiom:(long)arg1 onScreen:(id)arg2; (0x113b70440)
		- (id)
````````
